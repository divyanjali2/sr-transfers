<?php  return array (
  'resourceClass' => 'MODX\\Revolution\\modDocument',
  'resource' => 
  array (
    'id' => 7,
    'type' => 'document',
    'pagetitle' => 'fleet',
    'longtitle' => '',
    'description' => '',
    'alias' => 'fleet',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '<div id="toast"></div>

<body class="destinations-page">

  <main class="main">

    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-5.png);">
      <div class="container position-relative">
        <h1>Our Fleet</h1>
        <p>Explore our selection of reliable, comfortable vehicles for any trip.</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="[[~1]]">Home</a></li>
            <li class="current">Fleet</li>
          </ol>
        </nav>
      </div>
    </div>

    <section id="fleet" style="padding:5rem 0; background: #f8f9fa;">
        <div class="container">
            <div class="row fleet-row">

                <div class="col-md-6 vehicle-detail">
                    <div class="vehicle-list d-grid" style="gap: 20px; display:flex; flex-direction:column;">
                        [[!ShowVehicleData]]
                    </div>
                </div>

                <div class="col-md-6">
                    [[!ShowSearchData]]
                    <div id="selectedVehicle" class="mt-4" style="margin-top:2%;"></div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.28/jspdf.plugin.autotable.min.js"></script>

    <style>
        #selectedVehicle .card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            padding: 7px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        #selectedVehicle .card:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        }

        #selectedVehicle .vehicle-info p {
            margin: 5px 0;
            font-size: 14px;
            margin-bottom: 0 !important;
        }

        .vehicle-selected-info {
            display: flex;
            gap: 15px;
            align-items: flex-start;
        }
        @media (max-width: 768px) {
            .vehicle-selected-info {
                flex-direction: column;
                align-items: center;
            }
        }
        .vehicle-selected-info img {
            width: 22rem;
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .booking-form {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 18px;
            margin-top: 20px;
        }
        .booking-form h5 {
            margin-bottom: 10px !important;
            font-weight: 600;
            color: #333;
        }
        .booking-form .form-group {
            margin-bottom: 15px;
        }
        .booking-form input {
            width: 100%;
            padding: 10px 12px;
            border-radius: 10px;
            border: 1px solid #ddd;
            outline: none;
            transition: all 0.2s ease-in-out;
        }
        .booking-form input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.3);
        }
        .booking-form button {
            background: linear-gradient(180deg, #0a277d, #1b289da3);
            color: #fff;
            font-weight: 600;
            border: none;
            padding: 12px;
            border-radius: 10px;
            width: 100%;
            transition: background 0.3s ease, transform 0.2s ease;
        }
        .booking-form button:hover {
            background: linear-gradient(135deg, #0056d2, #003d99);
            transform: translateY(-2px);
        }
        .form-row {
            display: flex;
            gap: 10px;
        }
        @media (max-width: 768px) {
            .form-row {
                flex-direction: column;
            }
        }
    </style>

    <script>
        document.addEventListener("DOMContentLoaded", () => {

            const distanceDisplay = document.getElementById("distanceResult");
            const returnPickup = document.getElementById("returnPickup");
            const returnDropoff = document.getElementById("returnDropoff");

            // Update total price & collect add-ons
            function updateTotalPrice() {
                const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);
                const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);
                const pricePerKm = window.selectedVehiclePricePerKm || 0;

                let total = (mainDistance + returnDistance) * pricePerKm;

                const addons = [];
                document.querySelectorAll(".addon:checked").forEach(cb => {
                    const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                    const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                    const rate = parseFloat(cb.dataset.rate || 0);
                    const addonTotal = rate * qty;
                    total += addonTotal;

                    addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });
                });

                const totalPriceInput = document.getElementById("totalPrice");
                if (totalPriceInput) totalPriceInput.value = total ? "USD " + total.toFixed(2) : "";

                return { total, mainDistance, returnDistance, addons };
            }

            // Vehicle selection listener
            document.body.addEventListener("click", function(e) {
                if (!e.target.classList.contains("select-vehicle-btn")) return;

                e.preventDefault();

                const btn = e.target;
                const vehicleCard = btn.closest(".vehicle-card");
                const vehicleId = btn.dataset.id;
                const name = btn.dataset.name;
                const pricePerKm = parseFloat(btn.dataset.price || 0);
                window.selectedVehiclePricePerKm = pricePerKm;

                document.querySelectorAll(".vehicle-card").forEach(card => card.classList.remove("selected"));
                if (vehicleCard) vehicleCard.classList.add("selected");

                const pickupLocation = document.querySelector("#pickupLocation")?.value || "";
                const dropoffLocation = document.querySelector("#dropoffLocation")?.value || "";
                const travelDate = document.querySelector("#date")?.value || "";

                const { total, mainDistance, returnDistance, addons } = updateTotalPrice();

                // Render booking form
                const container = document.getElementById("selectedVehicle");
                container.innerHTML = `
                    <form class="booking-form" id="bookingForm">
                        <h5>Enter Your Details</h5>
                        <div class="form-group">
                            <input type="text" name="customerName" placeholder="Full Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" placeholder="Email Address" required>
                        </div>
                        <div class="form-group" style="display: flex; gap: 10px; flex: 1;">
                            <div style="flex: 0 0 40%;">[[!ShowCountries]]</div>
                            <input type="tel" name="phone" placeholder="Phone Number" required style="flex: 1; padding: 10px; border-radius: 6px;">
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="text" name="flightNumber" placeholder="Flight Number" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="number" name="numPassengers" min="1" placeholder="Number of Passengers" required>
                            </div>
                            <div class="form-group" style="flex:1;">
                                <input type="number" name="numLuggage" min="0" placeholder="Number of Suitcases" required>
                            </div>
                        </div>
                        <button type="submit">Submit Booking</button>
                    </form>
                `;

                // Form submit handler
                document.getElementById("bookingForm").addEventListener("submit", async function(ev) {
                    ev.preventDefault();
                    if (
                        !document.querySelector("#pickupLocation")?.value.trim() ||
                        !document.querySelector("#dropoffLocation")?.value.trim() ||
                        !document.querySelector("#date")?.value.trim()
                    ) {
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = "#dc3545";
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        showToast("⚠️ Please enter pickup, dropoff and date before booking!", false);
                        return;
                    }

                    // Get latest distances from your Google Maps distance script
                    const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);
                    const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);
                    const pricePerKm = window.selectedVehiclePricePerKm || 0;

                    // Compute main, return, total
                    let mainPrice = mainDistance * pricePerKm;
                    let returnPrice = returnDistance * pricePerKm;
                    let total = mainPrice + returnPrice;

                    // Collect add-ons again
                    const addons = [];
                    document.querySelectorAll(".addon:checked").forEach(cb => {
                        const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                        const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                        const rate = parseFloat(cb.dataset.rate || 0);
                        const addonTotal = rate * qty;
                        total += addonTotal;
                        addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });
                    });

                    const selectedCountryCode = this.country?.value || "";
                    const fullPhone = selectedCountryCode ? `${selectedCountryCode} ${this.phone.value}` : this.phone.value;

                    const formData = {
                        vehicle_id: vehicleId,
                        vehicle_category: name,
                        customer_name: this.customerName.value,
                        email: this.email.value,
                        phone: fullPhone,
                        flight_number: this.flightNumber.value,
                        total_price: total,
                        number_of_passengers: this.numPassengers.value,
                        number_of_luggage: this.numLuggage.value,
                        price_per_km: pricePerKm,
                        main_distance_km: mainDistance,
                        main_price: mainPrice,
                        return_distance_km: returnDistance,
                        return_price: returnPrice,
                        addons: addons,
                        pickup_location: document.querySelector("#pickupLocation")?.value || "",
                        dropoff_location: document.querySelector("#dropoffLocation")?.value || "",
                        return_pickup_location: returnPickup?.value || "",
                        return_dropoff_location: returnDropoff?.value || "",
                        travel_datetime: document.querySelector("#date")?.value || "",
                        return_datetime: document.querySelector("#returnDate")?.value || "",   
                    };

                    console.log("Booking form data being submitted:", formData);

                    try {
                        const response = await fetch("assets/includes/save_booking.php", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify(formData)
                        });

                        if (!response.ok) throw new Error(await response.text());
                        const result = await response.json();
                        console.log("Server response:", result);

                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        if (result.success) {
                                const bookingNumber = result.booking_number;

                            showToast("✅ Booking saved successfully!");

                            const { jsPDF } = window.jspdf;
                            const doc = new jsPDF({ format: "a4", unit: "pt" });

                            const pageWidth = doc.internal.pageSize.getWidth();
                            const pageHeight = doc.internal.pageSize.getHeight();

                            // === Header ===
                            const marginX = 25;

                            const imgUrl = "assets/img/logo.png";
                            doc.addImage(imgUrl, "PNG", pageWidth / 2 - 35, 20, 70, 35);

                            doc.setDrawColor(200, 0, 0);
                            doc.setLineWidth(1);
                            doc.line(marginX, 65, pageWidth - marginX, 65);

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(12);
                            doc.setTextColor(0, 0, 0);
                            doc.text("SR Transfers, Sri Lanka", pageWidth / 2, 80, { align: "center" });

                            doc.setFont("helvetica", "normal");
                            doc.setFontSize(9);
                            doc.text("No. 37/15, Negombo Road, Seeduwa, Sri Lanka", pageWidth / 2, 95, { align: "center" });
                            doc.text("Phone: +94 77 778 6729 | info@srilankarentacar.lk", pageWidth / 2, 110, { align: "center" });
                            doc.text(`Invoice Number: ${bookingNumber}`, pageWidth / 2, 126, { align: "center" });

                            doc.setDrawColor(0, 0, 0);
                            doc.setLineWidth(0.8);
                            doc.line(marginX, 130, pageWidth - marginX, 130);

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(14);
                            doc.setTextColor(0, 0, 0); 
                            doc.text("Invoice", pageWidth / 2, 145, { align: "center" }); 

                            const tableColumn = ["Description", "Value"];
                            const tableRows = Object.keys(formData)
                            .filter(k => k !== "vehicle_id")
                            .map(k => {
                                let v = formData[k];
                                if (k === "addons" && Array.isArray(v)) {
                                v = v.map(a => `${a.addon_name} (x${a.quantity})`).join(", ");
                                }
                                if (k === "price" && v) v = `$ ${parseFloat(v).toFixed(2)}`;
                                const label = k.replace(/_/g, " ").replace(/\\b\\w/g, c => c.toUpperCase());
                                return [label, v || ""];
                            });

                            doc.autoTable({
                            head: [tableColumn],
                            body: tableRows,
                            startY: 155,
                            theme: "grid",
                            styles: { fontSize: 10, cellPadding: 4, textColor: 0 },
                            headStyles: { fillColor: [194, 0, 0], textColor: 255, halign: "center", fontStyle: "bold" },
                            columnStyles: {
                                0: { cellWidth: 120 },
                                1: { cellWidth: pageWidth - 120 - 2 * marginX }
                            },
                            margin: { left: marginX, right: marginX }
                            });

                            const tableEndY = doc.lastAutoTable.finalY + 10;

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(11);
                            doc.setTextColor(200, 0, 0);
                            doc.text(`Total Charge: $${parseFloat(formData.total_price || 0).toFixed(2)}`, marginX, tableEndY + 15);
                            doc.setFontSize(9);
                            doc.setTextColor(0, 0, 0);
                            doc.text("**Please note: A waiting charge of $15 per hour will apply in addition to the total.", marginX, tableEndY + 30);

                            doc.setFontSize(9);
                            doc.setTextColor(0, 102, 0);
                            doc.text("• Please note: This serves as your official booking confirmation.", marginX, tableEndY + 55);

                            doc.setFontSize(10);
                            doc.setTextColor(0, 0, 0);
                            doc.text("Thank you for booking with SR Transfers!", pageWidth / 2, pageHeight - 25, { align: "center" });

                            // === Save PDF ===
                            doc.save(`${formData.customer_name}_invoice.pdf`);
                            const pdfBlob = doc.output("blob");
                            const formDataPdf = new FormData();
                            formDataPdf.append("invoice", pdfBlob, `${bookingNumber}.pdf`);
                            formDataPdf.append("booking_number", bookingNumber);

                            await fetch("assets/includes/save_invoice.php", {
                                method: "POST",
                                body: formDataPdf
                            });

                            this.reset();
                            setTimeout(() => location.reload(), 2000);
                        } else {
                            showToast("❌ Error: " + result.message, false);
                        }

                    } catch (err) {
                        console.error("Error submitting booking:", err);
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };
                        showToast("⚠️ Something went wrong while submitting the booking.", false);
                    }
                });
            });
        });
    </script>

</main>
</body>
</html>
',
    'richtext' => 1,
    'template' => 2,
    'menuindex' => 6,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1763092038,
    'editedby' => 1,
    'editedon' => 1763356966,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1763092020,
    'publishedby' => 1,
    'menutitle' => '',
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'MODX\\Revolution\\modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => '',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    'alias_visible' => 1,
    '_content' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>
<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="index.php?id=1">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="index.php?id=7" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=3">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=2">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=6">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=5">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>


<div id="toast"></div>

<body class="destinations-page">

  <main class="main">

    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-5.png);">
      <div class="container position-relative">
        <h1>Our Fleet</h1>
        <p>Explore our selection of reliable, comfortable vehicles for any trip.</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.php?id=1">Home</a></li>
            <li class="current">Fleet</li>
          </ol>
        </nav>
      </div>
    </div>

    <section id="fleet" style="padding:5rem 0; background: #f8f9fa;">
        <div class="container">
            <div class="row fleet-row">

                <div class="col-md-6 vehicle-detail">
                    <div class="vehicle-list d-grid" style="gap: 20px; display:flex; flex-direction:column;">
                        [[!ShowVehicleData]]
                    </div>
                </div>

                <div class="col-md-6">
                    [[!ShowSearchData]]
                    <div id="selectedVehicle" class="mt-4" style="margin-top:2%;"></div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.28/jspdf.plugin.autotable.min.js"></script>

    <style>
        #selectedVehicle .card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            padding: 7px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        #selectedVehicle .card:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        }

        #selectedVehicle .vehicle-info p {
            margin: 5px 0;
            font-size: 14px;
            margin-bottom: 0 !important;
        }

        .vehicle-selected-info {
            display: flex;
            gap: 15px;
            align-items: flex-start;
        }
        @media (max-width: 768px) {
            .vehicle-selected-info {
                flex-direction: column;
                align-items: center;
            }
        }
        .vehicle-selected-info img {
            width: 22rem;
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .booking-form {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 18px;
            margin-top: 20px;
        }
        .booking-form h5 {
            margin-bottom: 10px !important;
            font-weight: 600;
            color: #333;
        }
        .booking-form .form-group {
            margin-bottom: 15px;
        }
        .booking-form input {
            width: 100%;
            padding: 10px 12px;
            border-radius: 10px;
            border: 1px solid #ddd;
            outline: none;
            transition: all 0.2s ease-in-out;
        }
        .booking-form input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.3);
        }
        .booking-form button {
            background: linear-gradient(180deg, #0a277d, #1b289da3);
            color: #fff;
            font-weight: 600;
            border: none;
            padding: 12px;
            border-radius: 10px;
            width: 100%;
            transition: background 0.3s ease, transform 0.2s ease;
        }
        .booking-form button:hover {
            background: linear-gradient(135deg, #0056d2, #003d99);
            transform: translateY(-2px);
        }
        .form-row {
            display: flex;
            gap: 10px;
        }
        @media (max-width: 768px) {
            .form-row {
                flex-direction: column;
            }
        }
    </style>

    <script>
        document.addEventListener("DOMContentLoaded", () => {

            const distanceDisplay = document.getElementById("distanceResult");
            const returnPickup = document.getElementById("returnPickup");
            const returnDropoff = document.getElementById("returnDropoff");

            // Update total price & collect add-ons
            function updateTotalPrice() {
                const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);
                const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);
                const pricePerKm = window.selectedVehiclePricePerKm || 0;

                let total = (mainDistance + returnDistance) * pricePerKm;

                const addons = [];
                document.querySelectorAll(".addon:checked").forEach(cb => {
                    const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                    const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                    const rate = parseFloat(cb.dataset.rate || 0);
                    const addonTotal = rate * qty;
                    total += addonTotal;

                    addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });
                });

                const totalPriceInput = document.getElementById("totalPrice");
                if (totalPriceInput) totalPriceInput.value = total ? "USD " + total.toFixed(2) : "";

                return { total, mainDistance, returnDistance, addons };
            }

            // Vehicle selection listener
            document.body.addEventListener("click", function(e) {
                if (!e.target.classList.contains("select-vehicle-btn")) return;

                e.preventDefault();

                const btn = e.target;
                const vehicleCard = btn.closest(".vehicle-card");
                const vehicleId = btn.dataset.id;
                const name = btn.dataset.name;
                const pricePerKm = parseFloat(btn.dataset.price || 0);
                window.selectedVehiclePricePerKm = pricePerKm;

                document.querySelectorAll(".vehicle-card").forEach(card => card.classList.remove("selected"));
                if (vehicleCard) vehicleCard.classList.add("selected");

                const pickupLocation = document.querySelector("#pickupLocation")?.value || "";
                const dropoffLocation = document.querySelector("#dropoffLocation")?.value || "";
                const travelDate = document.querySelector("#date")?.value || "";

                const { total, mainDistance, returnDistance, addons } = updateTotalPrice();

                // Render booking form
                const container = document.getElementById("selectedVehicle");
                container.innerHTML = `
                    <form class="booking-form" id="bookingForm">
                        <h5>Enter Your Details</h5>
                        <div class="form-group">
                            <input type="text" name="customerName" placeholder="Full Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" placeholder="Email Address" required>
                        </div>
                        <div class="form-group" style="display: flex; gap: 10px; flex: 1;">
                            <div style="flex: 0 0 40%;">[[!ShowCountries]]</div>
                            <input type="tel" name="phone" placeholder="Phone Number" required style="flex: 1; padding: 10px; border-radius: 6px;">
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="text" name="flightNumber" placeholder="Flight Number" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="number" name="numPassengers" min="1" placeholder="Number of Passengers" required>
                            </div>
                            <div class="form-group" style="flex:1;">
                                <input type="number" name="numLuggage" min="0" placeholder="Number of Suitcases" required>
                            </div>
                        </div>
                        <button type="submit">Submit Booking</button>
                    </form>
                `;

                // Form submit handler
                document.getElementById("bookingForm").addEventListener("submit", async function(ev) {
                    ev.preventDefault();
                    if (
                        !document.querySelector("#pickupLocation")?.value.trim() ||
                        !document.querySelector("#dropoffLocation")?.value.trim() ||
                        !document.querySelector("#date")?.value.trim()
                    ) {
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = "#dc3545";
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        showToast("⚠️ Please enter pickup, dropoff and date before booking!", false);
                        return;
                    }

                    // Get latest distances from your Google Maps distance script
                    const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);
                    const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);
                    const pricePerKm = window.selectedVehiclePricePerKm || 0;

                    // Compute main, return, total
                    let mainPrice = mainDistance * pricePerKm;
                    let returnPrice = returnDistance * pricePerKm;
                    let total = mainPrice + returnPrice;

                    // Collect add-ons again
                    const addons = [];
                    document.querySelectorAll(".addon:checked").forEach(cb => {
                        const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                        const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                        const rate = parseFloat(cb.dataset.rate || 0);
                        const addonTotal = rate * qty;
                        total += addonTotal;
                        addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });
                    });

                    const selectedCountryCode = this.country?.value || "";
                    const fullPhone = selectedCountryCode ? `${selectedCountryCode} ${this.phone.value}` : this.phone.value;

                    const formData = {
                        vehicle_id: vehicleId,
                        vehicle_category: name,
                        customer_name: this.customerName.value,
                        email: this.email.value,
                        phone: fullPhone,
                        flight_number: this.flightNumber.value,
                        total_price: total,
                        number_of_passengers: this.numPassengers.value,
                        number_of_luggage: this.numLuggage.value,
                        price_per_km: pricePerKm,
                        main_distance_km: mainDistance,
                        main_price: mainPrice,
                        return_distance_km: returnDistance,
                        return_price: returnPrice,
                        addons: addons,
                        pickup_location: document.querySelector("#pickupLocation")?.value || "",
                        dropoff_location: document.querySelector("#dropoffLocation")?.value || "",
                        return_pickup_location: returnPickup?.value || "",
                        return_dropoff_location: returnDropoff?.value || "",
                        travel_datetime: document.querySelector("#date")?.value || "",
                        return_datetime: document.querySelector("#returnDate")?.value || "",   
                    };

                    console.log("Booking form data being submitted:", formData);

                    try {
                        const response = await fetch("assets/includes/save_booking.php", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify(formData)
                        });

                        if (!response.ok) throw new Error(await response.text());
                        const result = await response.json();
                        console.log("Server response:", result);

                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        if (result.success) {
                                const bookingNumber = result.booking_number;

                            showToast("✅ Booking saved successfully!");

                            const { jsPDF } = window.jspdf;
                            const doc = new jsPDF({ format: "a4", unit: "pt" });

                            const pageWidth = doc.internal.pageSize.getWidth();
                            const pageHeight = doc.internal.pageSize.getHeight();

                            // === Header ===
                            const marginX = 25;

                            const imgUrl = "assets/img/logo.png";
                            doc.addImage(imgUrl, "PNG", pageWidth / 2 - 35, 20, 70, 35);

                            doc.setDrawColor(200, 0, 0);
                            doc.setLineWidth(1);
                            doc.line(marginX, 65, pageWidth - marginX, 65);

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(12);
                            doc.setTextColor(0, 0, 0);
                            doc.text("SR Transfers, Sri Lanka", pageWidth / 2, 80, { align: "center" });

                            doc.setFont("helvetica", "normal");
                            doc.setFontSize(9);
                            doc.text("No. 37/15, Negombo Road, Seeduwa, Sri Lanka", pageWidth / 2, 95, { align: "center" });
                            doc.text("Phone: +94 77 778 6729 | info@srilankarentacar.lk", pageWidth / 2, 110, { align: "center" });
                            doc.text(`Invoice Number: ${bookingNumber}`, pageWidth / 2, 126, { align: "center" });

                            doc.setDrawColor(0, 0, 0);
                            doc.setLineWidth(0.8);
                            doc.line(marginX, 130, pageWidth - marginX, 130);

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(14);
                            doc.setTextColor(0, 0, 0); 
                            doc.text("Invoice", pageWidth / 2, 145, { align: "center" }); 

                            const tableColumn = ["Description", "Value"];
                            const tableRows = Object.keys(formData)
                            .filter(k => k !== "vehicle_id")
                            .map(k => {
                                let v = formData[k];
                                if (k === "addons" && Array.isArray(v)) {
                                v = v.map(a => `${a.addon_name} (x${a.quantity})`).join(", ");
                                }
                                if (k === "price" && v) v = `$ ${parseFloat(v).toFixed(2)}`;
                                const label = k.replace(/_/g, " ").replace(/\\b\\w/g, c => c.toUpperCase());
                                return [label, v || ""];
                            });

                            doc.autoTable({
                            head: [tableColumn],
                            body: tableRows,
                            startY: 155,
                            theme: "grid",
                            styles: { fontSize: 10, cellPadding: 4, textColor: 0 },
                            headStyles: { fillColor: [194, 0, 0], textColor: 255, halign: "center", fontStyle: "bold" },
                            columnStyles: {
                                0: { cellWidth: 120 },
                                1: { cellWidth: pageWidth - 120 - 2 * marginX }
                            },
                            margin: { left: marginX, right: marginX }
                            });

                            const tableEndY = doc.lastAutoTable.finalY + 10;

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(11);
                            doc.setTextColor(200, 0, 0);
                            doc.text(`Total Charge: $${parseFloat(formData.total_price || 0).toFixed(2)}`, marginX, tableEndY + 15);
                            doc.setFontSize(9);
                            doc.setTextColor(0, 0, 0);
                            doc.text("**Please note: A waiting charge of $15 per hour will apply in addition to the total.", marginX, tableEndY + 30);

                            doc.setFontSize(9);
                            doc.setTextColor(0, 102, 0);
                            doc.text("• Please note: This serves as your official booking confirmation.", marginX, tableEndY + 55);

                            doc.setFontSize(10);
                            doc.setTextColor(0, 0, 0);
                            doc.text("Thank you for booking with SR Transfers!", pageWidth / 2, pageHeight - 25, { align: "center" });

                            // === Save PDF ===
                            doc.save(`${formData.customer_name}_invoice.pdf`);
                            const pdfBlob = doc.output("blob");
                            const formDataPdf = new FormData();
                            formDataPdf.append("invoice", pdfBlob, `${bookingNumber}.pdf`);
                            formDataPdf.append("booking_number", bookingNumber);

                            await fetch("assets/includes/save_invoice.php", {
                                method: "POST",
                                body: formDataPdf
                            });

                            this.reset();
                            setTimeout(() => location.reload(), 2000);
                        } else {
                            showToast("❌ Error: " + result.message, false);
                        }

                    } catch (err) {
                        console.error("Error submitting booking:", err);
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };
                        showToast("⚠️ Something went wrong while submitting the booking.", false);
                    }
                });
            });
        });
    </script>

</main>
</body>
</html>

  <footer id="footer" class="footer position-relative dark-background">

    <!-- <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div> -->

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.php?id=1" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=1">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=3">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=2">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=6">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=5">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '.html',
    'icon' => '',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[$header?]]' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>',
    '[[~1]]' => 'index.php?id=1',
    '[[~7]]' => 'index.php?id=7',
    '[[~3]]' => 'index.php?id=3',
    '[[~2]]' => 'index.php?id=2',
    '[[~6]]' => 'index.php?id=6',
    '[[~5]]' => 'index.php?id=5',
    '[[$navbar?]]' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="index.php?id=1">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="index.php?id=7" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=3">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=2">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=6">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=5">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>

',
    '[[$footer?]]' => '  <footer id="footer" class="footer position-relative dark-background">

    <!-- <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div> -->

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.php?id=1" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=1">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=3">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=2">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=6">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=5">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
  ),
  'sourceCache' => 
  array (
    'MODX\\Revolution\\modChunk' => 
    array (
      'header' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'header',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'navbar' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'navbar',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="[[~1]]">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="[[~7]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="[[~3]]">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~2]]">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~6]]">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~5]]">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>

',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="[[~1]]">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="[[~7]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="[[~3]]">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~2]]">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~6]]">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~5]]">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>

',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'footer' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footer',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '  <footer id="footer" class="footer position-relative dark-background">

    <!-- <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div> -->

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="[[~1]]" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~1]]">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~3]]">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~2]]">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~6]]">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~5]]">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '  <footer id="footer" class="footer position-relative dark-background">

    <!-- <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div> -->

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="[[~1]]" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~1]]">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~3]]">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~2]]">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~6]]">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~5]]">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'MODX\\Revolution\\modSnippet' => 
    array (
      'ShowVehicleData' => 
      array (
        'fields' => 
        array (
          'id' => 5,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'ShowVehicleData',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => 'include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';

try {
    $stmt = $conn->query("SELECT * FROM `vehicles` ORDER BY sort_order ASC");
    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($vehicles) {
        foreach ($vehicles as $vehicle) {
            $hiddenClass = ($vehicle[\'id\'] > 6) ? \'hidden-vehicle\' : \'\';
            echo \'<div class="vehicle-card-fleet \' . $hiddenClass . \'">\';
            
            // Vehicle image
            echo \'<div class="vehicle-image">\';
            echo \'<img src="assets/img/vehicles/\' . htmlspecialchars($vehicle[\'image\']) . \'" alt="\' . htmlspecialchars($vehicle[\'name\']) . \'" style="width:100%; border-radius:10px;">\';
            echo \'</div>\';

            // Vehicle details
            echo \'<div class="vehicle-details">\';
            echo \'<h5>\' . htmlspecialchars($vehicle[\'name\']) . \'</h5>\';
            echo \'<p><i class="fa fa-user"></i> \' . intval($vehicle[\'passengers\']) . \' Passengers</p>\';
echo \'<p><i class="fa fa-suitcase"></i> \' 
    . intval($vehicle[\'large_suitcases\']) . \' Large | \' 
    . intval($vehicle[\'medium_suitcases\']) . \' Medium Suitcases</p>\';
            echo \'</div>\';

            // Vehicle price & total
            echo \'<div class="vehicle-price text-end">\';
            echo \'<h4 class="estimated-total" id="total-price-\' . intval($vehicle[\'id\']) . \'" style="font-weight:600;color:#04366b;display:none; font-size:18px;">Total: </h4>\';
            echo \'<p style="color:black; font-weight:600; margin-bottom:0;">$\' . number_format($vehicle[\'price\'], 2) . \' <small style="font-size:0.7em; font-weight:800; color:black;">per KM</small></p>\';
            echo \'<p class="text-success fw-bold">Free Cancellation</p>\';

            // Select button
            echo \'<button class="btn btn-primary mt-2 select-vehicle-btn"
                data-id="\' . intval($vehicle[\'id\']) . \'"
                data-name="\' . htmlspecialchars($vehicle[\'name\']) . \'"
                data-price="\' . number_format($vehicle[\'price\'], 2, \'.\', \'\') . \'">
                Select Vehicle
            </button>\';

            echo \'</div>\'; // vehicle-price
            echo \'</div>\'; // vehicle-card
        }
    } else {
        echo \'<p>No vehicles found.</p>\';
    }

} catch (PDOException $e) {
    echo \'<p style="color:red;">Database error: \' . $e->getMessage() . \'</p>\';
}
?>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const pickupInput = document.getElementById("pickupLocation");
        const dropoffInput = document.getElementById("dropoffLocation");
        const returnPickup = document.getElementById("returnPickup");
        const returnDropoff = document.getElementById("returnDropoff");
        const roundtripCheck = document.getElementById("roundtripCheck");
        const distanceDisplay = document.getElementById("distanceResult");

        let mainDistance = 0, returnDistance = 0, mainDuration = \'\', returnDuration = \'\';
        let selectedVehicleId = null;

        function getDistance(origin, dest) {
            return new Promise(resolve => {
                if (!origin || !dest) return resolve({ km: 0, duration: \'\' });
                const service = new google.maps.DistanceMatrixService();
                service.getDistanceMatrix({
                    origins: [origin],
                    destinations: [dest],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.METRIC
                }, (response, status) => {
                    if (status === "OK") {
                        const elem = response.rows[0].elements[0];
                        if (elem.status === "OK") {
                            const km = parseFloat(elem.distance.text.replace(" km",""));
                            resolve({ km, duration: elem.duration.text });
                            return;
                        }
                    }
                    resolve({ km: 0, duration: \'\' });
                });
            });
        }

        async function calculateAll() {
            const mainOrigin = pickupInput.value.trim();
            const mainDest = dropoffInput.value.trim();
            if (!mainOrigin || !mainDest) return;

            const mainRes = await getDistance(mainOrigin, mainDest);
            mainDistance = mainRes.km;
            mainDuration = mainRes.duration;

            if (roundtripCheck.checked) {
                const retOrigin = returnPickup.value.trim();
                const retDest = returnDropoff.value.trim();
                if (retOrigin && retDest) {
                    const retRes = await getDistance(retOrigin, retDest);
                    returnDistance = retRes.km;
                    returnDuration = retRes.duration;
                } else {
                    returnDistance = 0;
                    returnDuration = \'\';
                }
            } else {
                returnDistance = 0;
                returnDuration = \'\';
            }

            updateDisplay();
            updateAllVehiclePrices();
        }

        function updateDisplay() {
            if (mainDistance <= 0) {
                distanceDisplay.style.display = \'none\';
                return;
            }
            distanceDisplay.style.display = \'block\';

            let html = \'\';
            if (roundtripCheck.checked && returnDistance > 0) {
                html += `<div style="display:flex; justify-content:space-around; gap:20px;">
                            <div>🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}</div>
                            <div>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}</div>
                        </div>`;
                html += `<div style="text-align:center; margin-top:5px;">📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong></div>`;
            } else {
                html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;
            }
            distanceDisplay.innerHTML = html;
        }

        function updateAllVehiclePrices() {
            if (mainDistance <= 0) return;
            const totalKm = mainDistance + returnDistance;

            document.querySelectorAll(\'.vehicle-card-fleet\').forEach(card => {
                const pricePerKm = parseFloat(card.querySelector(\'.select-vehicle-btn\').dataset.price) || 0;
                const total = totalKm * pricePerKm;
                const totalEl = card.querySelector(\'.estimated-total\');
                if (totalEl) {
                    totalEl.innerHTML = \'Total: $ \' + total.toFixed(2);
                    totalEl.style.display = \'block\';
                }

                // Highlight selected vehicle
                const vehicleId = card.querySelector(\'.select-vehicle-btn\').dataset.id;
                if (vehicleId == selectedVehicleId) {
                    card.style.border = \'2px solid #04366b\';
                    card.style.boxShadow = \'0 4px 15px rgba(0,0,0,0.2)\';
                } else {
                    card.style.border = \'1px solid #ddd\';
                    card.style.boxShadow = \'0 2px 6px rgba(0,0,0,0.1)\';
                }
            });
        }

        // Handle vehicle selection
        document.querySelectorAll(\'.select-vehicle-btn\').forEach(btn => {
            btn.addEventListener(\'click\', function() {
                selectedVehicleId = this.dataset.id;
                updateAllVehiclePrices();
            });
        });

        // Recalculate distances on input changes
        [pickupInput, dropoffInput, returnPickup, returnDropoff].forEach(input => {
            input.addEventListener(\'change\', calculateAll);
        });
        roundtripCheck.addEventListener(\'change\', calculateAll);

        calculateAll(); 
    });
</script>

<?php return \'\';',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => 'include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';

try {
    $stmt = $conn->query("SELECT * FROM `vehicles` ORDER BY sort_order ASC");
    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($vehicles) {
        foreach ($vehicles as $vehicle) {
            $hiddenClass = ($vehicle[\'id\'] > 6) ? \'hidden-vehicle\' : \'\';
            echo \'<div class="vehicle-card-fleet \' . $hiddenClass . \'">\';
            
            // Vehicle image
            echo \'<div class="vehicle-image">\';
            echo \'<img src="assets/img/vehicles/\' . htmlspecialchars($vehicle[\'image\']) . \'" alt="\' . htmlspecialchars($vehicle[\'name\']) . \'" style="width:100%; border-radius:10px;">\';
            echo \'</div>\';

            // Vehicle details
            echo \'<div class="vehicle-details">\';
            echo \'<h5>\' . htmlspecialchars($vehicle[\'name\']) . \'</h5>\';
            echo \'<p><i class="fa fa-user"></i> \' . intval($vehicle[\'passengers\']) . \' Passengers</p>\';
echo \'<p><i class="fa fa-suitcase"></i> \' 
    . intval($vehicle[\'large_suitcases\']) . \' Large | \' 
    . intval($vehicle[\'medium_suitcases\']) . \' Medium Suitcases</p>\';
            echo \'</div>\';

            // Vehicle price & total
            echo \'<div class="vehicle-price text-end">\';
            echo \'<h4 class="estimated-total" id="total-price-\' . intval($vehicle[\'id\']) . \'" style="font-weight:600;color:#04366b;display:none; font-size:18px;">Total: </h4>\';
            echo \'<p style="color:black; font-weight:600; margin-bottom:0;">$\' . number_format($vehicle[\'price\'], 2) . \' <small style="font-size:0.7em; font-weight:800; color:black;">per KM</small></p>\';
            echo \'<p class="text-success fw-bold">Free Cancellation</p>\';

            // Select button
            echo \'<button class="btn btn-primary mt-2 select-vehicle-btn"
                data-id="\' . intval($vehicle[\'id\']) . \'"
                data-name="\' . htmlspecialchars($vehicle[\'name\']) . \'"
                data-price="\' . number_format($vehicle[\'price\'], 2, \'.\', \'\') . \'">
                Select Vehicle
            </button>\';

            echo \'</div>\'; // vehicle-price
            echo \'</div>\'; // vehicle-card
        }
    } else {
        echo \'<p>No vehicles found.</p>\';
    }

} catch (PDOException $e) {
    echo \'<p style="color:red;">Database error: \' . $e->getMessage() . \'</p>\';
}
?>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const pickupInput = document.getElementById("pickupLocation");
        const dropoffInput = document.getElementById("dropoffLocation");
        const returnPickup = document.getElementById("returnPickup");
        const returnDropoff = document.getElementById("returnDropoff");
        const roundtripCheck = document.getElementById("roundtripCheck");
        const distanceDisplay = document.getElementById("distanceResult");

        let mainDistance = 0, returnDistance = 0, mainDuration = \'\', returnDuration = \'\';
        let selectedVehicleId = null;

        function getDistance(origin, dest) {
            return new Promise(resolve => {
                if (!origin || !dest) return resolve({ km: 0, duration: \'\' });
                const service = new google.maps.DistanceMatrixService();
                service.getDistanceMatrix({
                    origins: [origin],
                    destinations: [dest],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.METRIC
                }, (response, status) => {
                    if (status === "OK") {
                        const elem = response.rows[0].elements[0];
                        if (elem.status === "OK") {
                            const km = parseFloat(elem.distance.text.replace(" km",""));
                            resolve({ km, duration: elem.duration.text });
                            return;
                        }
                    }
                    resolve({ km: 0, duration: \'\' });
                });
            });
        }

        async function calculateAll() {
            const mainOrigin = pickupInput.value.trim();
            const mainDest = dropoffInput.value.trim();
            if (!mainOrigin || !mainDest) return;

            const mainRes = await getDistance(mainOrigin, mainDest);
            mainDistance = mainRes.km;
            mainDuration = mainRes.duration;

            if (roundtripCheck.checked) {
                const retOrigin = returnPickup.value.trim();
                const retDest = returnDropoff.value.trim();
                if (retOrigin && retDest) {
                    const retRes = await getDistance(retOrigin, retDest);
                    returnDistance = retRes.km;
                    returnDuration = retRes.duration;
                } else {
                    returnDistance = 0;
                    returnDuration = \'\';
                }
            } else {
                returnDistance = 0;
                returnDuration = \'\';
            }

            updateDisplay();
            updateAllVehiclePrices();
        }

        function updateDisplay() {
            if (mainDistance <= 0) {
                distanceDisplay.style.display = \'none\';
                return;
            }
            distanceDisplay.style.display = \'block\';

            let html = \'\';
            if (roundtripCheck.checked && returnDistance > 0) {
                html += `<div style="display:flex; justify-content:space-around; gap:20px;">
                            <div>🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}</div>
                            <div>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}</div>
                        </div>`;
                html += `<div style="text-align:center; margin-top:5px;">📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong></div>`;
            } else {
                html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;
            }
            distanceDisplay.innerHTML = html;
        }

        function updateAllVehiclePrices() {
            if (mainDistance <= 0) return;
            const totalKm = mainDistance + returnDistance;

            document.querySelectorAll(\'.vehicle-card-fleet\').forEach(card => {
                const pricePerKm = parseFloat(card.querySelector(\'.select-vehicle-btn\').dataset.price) || 0;
                const total = totalKm * pricePerKm;
                const totalEl = card.querySelector(\'.estimated-total\');
                if (totalEl) {
                    totalEl.innerHTML = \'Total: $ \' + total.toFixed(2);
                    totalEl.style.display = \'block\';
                }

                // Highlight selected vehicle
                const vehicleId = card.querySelector(\'.select-vehicle-btn\').dataset.id;
                if (vehicleId == selectedVehicleId) {
                    card.style.border = \'2px solid #04366b\';
                    card.style.boxShadow = \'0 4px 15px rgba(0,0,0,0.2)\';
                } else {
                    card.style.border = \'1px solid #ddd\';
                    card.style.boxShadow = \'0 2px 6px rgba(0,0,0,0.1)\';
                }
            });
        }

        // Handle vehicle selection
        document.querySelectorAll(\'.select-vehicle-btn\').forEach(btn => {
            btn.addEventListener(\'click\', function() {
                selectedVehicleId = this.dataset.id;
                updateAllVehiclePrices();
            });
        });

        // Recalculate distances on input changes
        [pickupInput, dropoffInput, returnPickup, returnDropoff].forEach(input => {
            input.addEventListener(\'change\', calculateAll);
        });
        roundtripCheck.addEventListener(\'change\', calculateAll);

        calculateAll(); 
    });
</script>

<?php return \'\';',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'ShowSearchData' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'ShowSearchData',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => 'if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Handle form submission
if (!empty($_POST)) {
    unset($_SESSION[\'searchData\']);

    $_SESSION[\'searchData\'] = [
        \'pickup\'        => $_POST[\'pickupLocation\'] ?? \'\',
        \'dropoff\'       => $_POST[\'dropoffLocation\'] ?? \'\',
        \'date\'          => $_POST[\'date\'] ?? \'\',
        \'returnPickup\'  => $_POST[\'returnPickup\'] ?? \'\',
        \'returnDropoff\' => $_POST[\'returnDropoff\'] ?? \'\',
        \'returnDate\'    => $_POST[\'returnDate\'] ?? \'\',
        \'isRoundtrip\'   => isset($_POST[\'roundtripCheck\']) ? 1 : 0
    ];
}

// Retrieve stored search data
$data          = $_SESSION[\'searchData\'] ?? [];
$pickup        = htmlspecialchars($data[\'pickup\'] ?? \'\');
$dropoff       = htmlspecialchars($data[\'dropoff\'] ?? \'\');
$date          = htmlspecialchars($data[\'date\'] ?? \'\');
$returnPickup  = htmlspecialchars($data[\'returnPickup\'] ?? \'\');
$returnDropoff = htmlspecialchars($data[\'returnDropoff\'] ?? \'\');
$returnDate    = htmlspecialchars($data[\'returnDate\'] ?? \'\');
$isRoundtrip   = !empty($data[\'isRoundtrip\']);

// Fetch Add-ons from DB
$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';
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

    <div id="returnDetails" style="display:<?= $isRoundtrip ? \'block\' : \'none\' ?>">
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
                <?php foreach ($addons as $a): $id = (int)$a[\'id\']; $rate = (float)$a[\'rate\']; $name = htmlspecialchars($a[\'addon_name\']); ?>
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


<?php return \'\';',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => 'if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Handle form submission
if (!empty($_POST)) {
    unset($_SESSION[\'searchData\']);

    $_SESSION[\'searchData\'] = [
        \'pickup\'        => $_POST[\'pickupLocation\'] ?? \'\',
        \'dropoff\'       => $_POST[\'dropoffLocation\'] ?? \'\',
        \'date\'          => $_POST[\'date\'] ?? \'\',
        \'returnPickup\'  => $_POST[\'returnPickup\'] ?? \'\',
        \'returnDropoff\' => $_POST[\'returnDropoff\'] ?? \'\',
        \'returnDate\'    => $_POST[\'returnDate\'] ?? \'\',
        \'isRoundtrip\'   => isset($_POST[\'roundtripCheck\']) ? 1 : 0
    ];
}

// Retrieve stored search data
$data          = $_SESSION[\'searchData\'] ?? [];
$pickup        = htmlspecialchars($data[\'pickup\'] ?? \'\');
$dropoff       = htmlspecialchars($data[\'dropoff\'] ?? \'\');
$date          = htmlspecialchars($data[\'date\'] ?? \'\');
$returnPickup  = htmlspecialchars($data[\'returnPickup\'] ?? \'\');
$returnDropoff = htmlspecialchars($data[\'returnDropoff\'] ?? \'\');
$returnDate    = htmlspecialchars($data[\'returnDate\'] ?? \'\');
$isRoundtrip   = !empty($data[\'isRoundtrip\']);

// Fetch Add-ons from DB
$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';
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

    <div id="returnDetails" style="display:<?= $isRoundtrip ? \'block\' : \'none\' ?>">
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
                <?php foreach ($addons as $a): $id = (int)$a[\'id\']; $rate = (float)$a[\'rate\']; $name = htmlspecialchars($a[\'addon_name\']); ?>
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


<?php return \'\';',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'ShowCountries' => 
      array (
        'fields' => 
        array (
          'id' => 6,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'ShowCountries',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';

try {
    $stmt = $conn->query("SELECT country_name, country_code FROM country_codes ORDER BY country_name ASC");
    $countries = $stmt->fetchAll(PDO::FETCH_ASSOC);
    if (!$countries) return \'<p>No countries found.</p>\';

    $selectedCode = isset($selected) ? strtoupper(trim($selected)) : \'\';
    $output = \'<div class="form-group" style="margin-bottom:0;">
        <select id="country" name="country" style="width:100%;padding:8px;border-radius:6px;border:1px solid #ccc;">
            <option value="">-- Choose a Country --</option>\';

    foreach ($countries as $c) {
        $name = htmlspecialchars($c[\'country_name\']);
        $code = htmlspecialchars(strtoupper($c[\'country_code\']));
        $sel = $code === $selectedCode ? \' selected\' : \'\';
        $output .= "<option value=\'$code\'$sel>$name ($code)</option>";
    }

    return $output . \'</select></div>\';
} catch (PDOException $e) {
    return "<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>";
}',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';

try {
    $stmt = $conn->query("SELECT country_name, country_code FROM country_codes ORDER BY country_name ASC");
    $countries = $stmt->fetchAll(PDO::FETCH_ASSOC);
    if (!$countries) return \'<p>No countries found.</p>\';

    $selectedCode = isset($selected) ? strtoupper(trim($selected)) : \'\';
    $output = \'<div class="form-group" style="margin-bottom:0;">
        <select id="country" name="country" style="width:100%;padding:8px;border-radius:6px;border:1px solid #ccc;">
            <option value="">-- Choose a Country --</option>\';

    foreach ($countries as $c) {
        $name = htmlspecialchars($c[\'country_name\']);
        $code = htmlspecialchars(strtoupper($c[\'country_code\']));
        $sel = $code === $selectedCode ? \' selected\' : \'\';
        $output .= "<option value=\'$code\'$sel>$name ($code)</option>";
    }

    return $output . \'</select></div>\';
} catch (PDOException $e) {
    return "<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>";
}',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'MODX\\Revolution\\modTemplateVar' => 
    array (
    ),
  ),
);