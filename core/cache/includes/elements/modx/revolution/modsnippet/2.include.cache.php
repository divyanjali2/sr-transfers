<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Handle form submission
if (!empty($_POST)) {
    unset($_SESSION['searchData']);

    $_SESSION['searchData'] = [
        'pickup'        => $_POST['pickupLocation'] ?? '',
        'dropoff'       => $_POST['dropoffLocation'] ?? '',
        'date'          => $_POST['date'] ?? '',
        'returnPickup'  => $_POST['returnPickup'] ?? '',
        'returnDropoff' => $_POST['returnDropoff'] ?? '',
        'returnDate'    => $_POST['returnDate'] ?? '',
        'isRoundtrip'   => isset($_POST['roundtripCheck']) ? 1 : 0
    ];
}

// Retrieve stored search data
$data          = $_SESSION['searchData'] ?? [];
$pickup        = htmlspecialchars($data['pickup'] ?? '');
$dropoff       = htmlspecialchars($data['dropoff'] ?? '');
$date          = htmlspecialchars($data['date'] ?? '');
$returnPickup  = htmlspecialchars($data['returnPickup'] ?? '');
$returnDropoff = htmlspecialchars($data['returnDropoff'] ?? '');
$returnDate    = htmlspecialchars($data['returnDate'] ?? '');
$isRoundtrip   = !empty($data['isRoundtrip']);

// Fetch Add-ons from DB
$conn = include MODX_BASE_PATH . 'assets/includes/db_connect.php';
try {
    $addons = $conn->query("SELECT `id`, `addon_name`, `rate` FROM `addons` ORDER BY `id` ASC")
                   ->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $addons = [];
}
?>

<style>
    .search-summary-form { background:#fff; border-radius:20px; padding:20px; box-shadow:0 6px 20px rgba(0,0,0,0.1); position:relative; }
    .search-summary-form h5 { text-align:center; margin:0 0 12px; font-weight:600; color:#333; }
    .search-summary-form .row { display:flex; flex-direction:column; gap:12px; }
    .search-summary-form .col { width:100%; }
    @media(min-width:992px) {
        .search-summary-form .row { flex-direction:row; gap:15px; }
        .search-summary-form .col { flex:1; }
    }
    .form-group label{ font-weight:600; font-size:14px; display:block; margin-bottom:6px;}
    .search-summary-form input, .search-summary-form select { width:100%; padding:10px 12px; border-radius:10px; border:1px solid #ddd; }
    .map-wrapper { width:100%; height:200px; border-radius:15px; overflow:hidden; box-shadow:0 6px 20px rgba(0,0,0,0.08); background:#eaeaea; }
    .map-wrapper.large { height:250px !important; }
    #distanceResult { text-align:center; font-weight:600; color:#04366b; margin-top:6px; margin-bottom:6px; }
</style>

<form class="search-summary-form text-start" method="post" id="searchForm">

    <h5><i class="fa fa-search"></i> Your Search Details</h5>

    <!-- Main Trip -->
    <div class="row" style="position: relative;">
        <div class="col form-group">
            <label for="pickupLocation">Pickup Airport <span class="text-danger">*</span></label>
            <input type="text" id="pickupLocation" name="pickupLocation" value="<?= $pickup ?>" required>
        </div>

        <div class="col form-group">
            <label for="dropoffLocation">Dropoff Location <span class="text-danger">*</span></label>
            <input type="text" id="dropoffLocation" name="dropoffLocation" value="<?= $dropoff ?>" required>
        </div>
    </div>

    <div class="row" style="margin-top:10px;">
        <div class="col form-group">
            <label for="date">Travel Date <span class="text-danger">*</span></label>
            <input type="datetime-local" id="date" name="date" value="<?= $date ?>" required>
        </div>
        <div class="col form-group">
            <label for="totalPrice">Estimated Price</label>
            <input type="text" id="totalPrice" name="totalPrice" value="" readonly style="background:#f1f1f1; font-weight:600;">
        </div>
    </div>

    <div class="form-check" style="margin:12px 0;">
        <input type="checkbox" class="form-check-input" id="roundtripCheck" name="roundtripCheck" <?= $isRoundtrip ? "checked" : "" ?> style="width: auto;">
        <label for="roundtripCheck" style="margin-left:8px; font-weight:600">Round Trip</label>
    </div>

    <hr>

    <div id="returnDetails" style="display:<?= $isRoundtrip ? 'block' : 'none' ?>">
        <div class="row">
            <div class="col form-group">
                <label for="returnPickup">Return Pickup Location</label>
                <input type="text" id="returnPickup" name="returnPickup" value="<?= $returnPickup ?>">
            </div>
            <div class="col form-group">
                <label for="returnDropoff">Return Drop-off Location</label>
                <input type="text" id="returnDropoff" name="returnDropoff" value="<?= $returnDropoff ?>">
            </div>
        </div>

        <div class="form-group" style="margin-top:10px;">
            <label for="returnDate">Return Date</label>
            <input type="datetime-local" id="returnDate" name="returnDate" value="<?= $returnDate ?>" style="width: 50%;">
        </div>
    </div>

    <hr>

    <!-- Add-ons -->
    <?php if ($addons): ?>
        <div class="form-group">
            <label style="font-weight:600;">Select Add-ons</label>
            <div style="display:grid; gap:10px;">
                <?php foreach ($addons as $a): $id = (int)$a['id']; $rate = (float)$a['rate']; $name = htmlspecialchars($a['addon_name']); ?>
                <label style="display:flex;align-items:center;justify-content:space-between;white-space:nowrap;">
                    <span style="display:flex;align-items:center;gap:8px;">
                        <input type="checkbox" class="addon" data-id="<?= $id ?>" name="addons[]" value="<?= $id ?>" data-rate="<?= $rate ?>" data-addon_name="<?= $name ?>">
                        <?= $name ?> (+$ <?= number_format($rate, 2) ?>)
                    </span>
                    <select name="addons_qty[<?= $id ?>]" class="qty" style="padding:3px 6px;border-radius:4px;width:20%;" disabled>
                        <?php for($i=1; $i<=3; $i++): ?>
                            <option value="<?= $i ?>"><?= $i ?></option>
                        <?php endfor; ?>
                    </select>
                </label>
                <?php endforeach; ?>
            </div>
        </div>
    <?php endif; ?>

    <hr style="margin:15px 0;">

    <div id="distanceResult" style="display:none;"></div>

    <div class="map-wrapper" id="mapWrapper">
        <div id="routeMap" style="width:100%; height:100%;"></div>
    </div>
</form>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBl50Q8W4ZF2_EkOJ1lnRoVxO1IdjIupjM&libraries=places"></script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const pickupInput = document.getElementById("pickupLocation");
        const dropoffInput = document.getElementById("dropoffLocation");
        const returnPickup = document.getElementById("returnPickup");
        const returnDropoff = document.getElementById("returnDropoff");
        const roundtripCheck = document.getElementById("roundtripCheck");
        const returnDetails = document.getElementById("returnDetails");
        const distanceDisplay = document.getElementById("distanceResult");
        const totalPriceInput = document.getElementById("totalPrice");
        const mapWrapper = document.getElementById("mapWrapper");
        const mapEl = document.getElementById("routeMap");

        let directionsRendererMain;
        let directionsRendererReturn;

        let map, directionsService, directionsRenderer;
        let mainDistance = 0, mainDuration = "";
        let returnDistance = 0, returnDuration = "";
        let pricePerKm = 0;

        function initMap() {
            map = new google.maps.Map(mapEl, { zoom: 7, center: { lat: 7.8731, lng: 80.7718 } });
            directionsService = new google.maps.DirectionsService();
            directionsRendererMain = new google.maps.DirectionsRenderer({
                suppressMarkers: false,
                polylineOptions: { strokeColor: "#1A73E8", strokeWeight: 5 }
            });
            directionsRendererMain.setMap(map);

            directionsRendererReturn = new google.maps.DirectionsRenderer({
                suppressMarkers: false,
                polylineOptions: { strokeColor: "#34A853", strokeWeight: 5 }
            });
            directionsRendererReturn.setMap(map);
        }

        function initAutocomplete() {
            const options = { componentRestrictions: { country: "lk" } };
            new google.maps.places.Autocomplete(pickupInput, options).addListener("place_changed", calculateAll);
            new google.maps.places.Autocomplete(dropoffInput, options).addListener("place_changed", calculateAll);
            if (returnPickup) new google.maps.places.Autocomplete(returnPickup, options).addListener("place_changed", calculateAll);
            if (returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options).addListener("place_changed", calculateAll);
        }

        initMap();
        initAutocomplete();

        async function getDistance(origin, destination) {
            return new Promise(resolve => {
                if (!origin || !destination) return resolve({ km:0, duration:"" });
                const service = new google.maps.DistanceMatrixService();
                service.getDistanceMatrix({
                    origins: [origin],
                    destinations: [destination],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.METRIC
                }, (response, status) => {
                    if (status === "OK") {
                        const elem = response.rows[0].elements[0];
                        if (elem.status === "OK") {
                            let km = parseFloat(elem.distance.text.replace(" km", ""));
                            let dur = elem.duration.text;
                            return resolve({ km, duration: dur });
                        }
                    }
                    resolve({ km:0, duration:"" });
                });
            });
        }

        async function showRouteMain(origin, destination) {
            if (!origin || !destination) return;
            return new Promise(resolve => {
                directionsService.route({
                    origin,
                    destination,
                    travelMode: google.maps.TravelMode.DRIVING
                }, (result, status) => {
                    if (status === "OK") {
                        directionsRendererMain.setDirections(result);
                    }
                    resolve();
                });
            });
        }

        async function showRouteReturn(origin, destination) {
            if (!origin || !destination) return;
            return new Promise(resolve => {
                directionsService.route({
                    origin,
                    destination,
                    travelMode: google.maps.TravelMode.DRIVING
                }, (result, status) => {
                    if (status === "OK") {
                        directionsRendererReturn.setDirections(result);
                    }
                    resolve();
                });
            });
        }

        async function calculateAll() {
            const p1 = pickupInput.value.trim();
            const d1 = dropoffInput.value.trim();

            const main = await getDistance(p1, d1);
            mainDistance = main.km;
            mainDuration = main.duration;
            if (mainDistance > 0) await showRouteMain(p1, d1);

            if (roundtripCheck.checked) {
                const rp = returnPickup.value.trim();
                const rd = returnDropoff.value.trim();
                const ret = await getDistance(rp, rd);
                returnDistance = ret.km;
                returnDuration = ret.duration;
                if (returnDistance > 0) await showRouteReturn(rp, rd);

            } else {
                returnDistance = 0;
                returnDuration = "";
            }

            updateDisplay();
        }

        function updateDisplay() {
            if (mainDistance <= 0) return;
            distanceDisplay.style.display = "block";

            distanceDisplay.dataset.mainDistance = mainDistance;
            distanceDisplay.dataset.returnDistance = returnDistance;

            let html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;
            if (roundtripCheck.checked && returnDistance > 0) {
                html += `<br>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}`;
                html += `<br>📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong>`;
            }
            distanceDisplay.innerHTML = html;
            updateTotalPrice();
        }


        function updateTotalPrice() {
            let totalKm = mainDistance + (returnDistance || 0); 
            let total = totalKm * pricePerKm;

            document.querySelectorAll(".addon:checked").forEach(cb => {
                const rate = parseFloat(cb.dataset.rate) || 0;
                const qtySel = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                const qty = qtySel ? parseInt(qtySel.value) : 1;
                total += rate * qty;
            });

            totalPriceInput.value = total ? "$ " + total.toFixed(2) : "";
        }

        // Vehicle selection buttons
        document.querySelectorAll(".select-vehicle-btn").forEach(btn => {
            btn.addEventListener("click", async () => {
                pricePerKm = parseFloat(btn.dataset.price);
                document.querySelectorAll(".select-vehicle-btn").forEach(b => b.classList.remove("active"));
                btn.classList.add("active");
                document.querySelectorAll(".addon").forEach(cb => {
                    cb.checked = false;
                    const qtySel = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                    if(qtySel){ qtySel.disabled = true; qtySel.value = 1; }
                });
                await calculateAll();  
                updateTotalPrice(); 
            });
        });

        // Inputs change listeners
        pickupInput.addEventListener("change", calculateAll);
        dropoffInput.addEventListener("change", calculateAll);
        if(returnPickup) returnPickup.addEventListener("change", calculateAll);
        if(returnDropoff) returnDropoff.addEventListener("change", calculateAll);

        roundtripCheck.addEventListener("change", () => {
            returnDetails.style.display = roundtripCheck.checked ? "block" : "none";
            calculateAll();
        });

        // Add-ons listeners
        document.querySelectorAll(".addon").forEach(cb => {
            cb.addEventListener("change", () => {
                const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                if (qtySelect) qtySelect.disabled = !cb.checked;
                updateTotalPrice();
            });
        });
        document.querySelectorAll("select.qty").forEach(sel => {
            sel.addEventListener("change", updateTotalPrice);
        });

        if(pickupInput.value && dropoffInput.value) calculateAll();
    });
</script>


<?php return '';
return;
