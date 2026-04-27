<?php  return array (
  'resourceClass' => 'MODX\\Revolution\\modDocument',
  'resource' => 
  array (
    'id' => 1,
    'type' => 'document',
    'pagetitle' => 'Home',
    'longtitle' => 'Congratulations!',
    'description' => '',
    'alias' => 'index',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '<body class="index-page">

  <main class="main">

    <!-- Travel Hero Section -->
    <section id="travel-hero" class="travel-hero section dark-background">
        <div class="hero-background">
            <video autoplay="" muted="" loop="">
                <source src="assets/video/preview.mp4" type="video/mp4">
            </video>
            <div class="hero-overlay"></div>
        </div>

        <div class="container position-relative" style="bottom: 26%;">
            <div class="row">
                <div class="col-lg-7 col-xl-5">
                    <div class="booking-form-wrapper" data-aos="fade-left" data-aos-delay="200">
                        <div class="booking-form">
                            <h3 class="form-title">Schedule Your Ride</h3>
                            <form action="[[~7]]" method="post">
                                <!-- Pickup / Drop-off Row -->
                                <div class="row g-2 align-items-center">
                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="text" name="pickupLocation" id="pickupLocation" class="form-control" placeholder="Arrival airport" required>
                                    </div>
                                    </div>

                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="text" name="dropoffLocation" id="dropoffLocation" class="form-control" placeholder="Going to" required>
                                    </div>
                                    </div>
                                </div>

                                <!-- Departure Date & Roundtrip Checkbox -->
                                <div class="row g-2 align-items-center mb-3">
                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="datetime-local" name="date" id="date" class="form-control" required>
                                    </div>
                                    </div>
                                    <div class="col-md-6 d-flex align-items-center justify-content-center">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="roundtripCheck">
                                        <label class="form-check-label" for="roundtripCheck">Roundtrip</label>
                                    </div>
                                    </div>
                                </div>

                                <!-- Return Trip Fields (hidden by default) -->
                                <div id="returnDetails" style="display:none;">
                                    <div class="row g-2 align-items-center">
                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                            <input type="text" name="returnPickup" id="returnPickup" class="form-control" placeholder="Return Pickup Location">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                            <input type="text" name="returnDropoff" id="returnDropoff" class="form-control" placeholder="Return Drop-off Location">
                                            </div>
                                        </div>
                                    </div>

                                        <div class="form-group mb-3">
                                        <input type="datetime-local" name="returnDate" id="returnDate" class="form-control">
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary w-100">Find Your Transfer</button>
                            </form>

                            <!-- Google Maps Autocomplete + Roundtrip -->
                            <script>
                            const pickupInput = document.getElementById(\'pickupLocation\');
                            const dropoffInput = document.getElementById(\'dropoffLocation\');
                            const returnPickup = document.getElementById(\'returnPickup\');
                            const returnDropoff = document.getElementById(\'returnDropoff\');
                            const roundtripCheck = document.getElementById(\'roundtripCheck\');
                            const returnDetails = document.getElementById(\'returnDetails\');

                            // Show/hide return details
                            roundtripCheck.addEventListener(\'change\', () => {
                                returnDetails.style.display = roundtripCheck.checked ? \'block\' : \'none\';
                            });

                            function initAutocomplete() {
                                const options = { componentRestrictions: { country: \'lk\' } };
                                new google.maps.places.Autocomplete(pickupInput, options);
                                new google.maps.places.Autocomplete(dropoffInput, options);

                                if(returnPickup) new google.maps.places.Autocomplete(returnPickup, options);
                                if(returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options);
                            }

                            window.initAutocomplete = initAutocomplete;
                            </script>

                            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places&callback=initAutocomplete" async defer></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Travel Hero Section -->


    <!-- Why Us Section -->
    <section id="why-us" class="why-us section">
      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <!-- About Us Content -->
        <div id="contentImageSlider" class="carousel slide" data-bs-ride="carousel">

          <div class="carousel-inner">

            <!-- SLIDE 1 -->
            <div class="carousel-item active">
              <div class="row align-items-center mb-5">
                
                <!-- CONTENT -->
                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="200">
                  <div class="content">
                    <h3>Explore the World with Confidence</h3>
                    <p class="mb-0">Enjoy hassle-free airport transfers with reliable, comfortable, and punctual service every time.</p>
                    <p>Whether you\'re arriving or departing, we ensure a smooth, safe, and stress-free journey to your destination.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> Professional and Experienced Drivers</li>
                      <li><i class="bi bi-check-circle-fill"></i> Wide Range of Well-Maintained Vehicles</li>
                      <li><i class="bi bi-check-circle-fill"></i> 24/7 Customer Support</li>
                    </ul>
                  </div>
                </div>

                <!-- IMAGE -->
                <div class="col-lg-6" data-aos="fade-left" data-aos-delay="300">
                  <div class="about-image position-relative">
                    <img class="intro" src="assets/img/intro/1.jpg"  alt="">
                    <div class="experience-badge">
                      <div class="experience-number">15+</div>
                      <div class="experience-text">Years of Excellence</div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <!-- END SLIDE 1 -->


            <!-- SLIDE 2 -->
            <div class="carousel-item">
              <div class="row align-items-center mb-5">

                <div class="col-lg-6">
                  <div class="content">
                    <h3>Seamless Travel Solutions</h3>
                    <p>Experience smooth and stress-free airport transfers with timely pickups, comfortable vehicles, and friendly service from start to finish.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> Reliable Service</li>
                      <li><i class="bi bi-check-circle-fill"></i> Affordable Prices</li>
                      <li><i class="bi bi-check-circle-fill"></i> Islandwide Support</li>
                    </ul>
                  </div>
                </div>

                <div class="col-lg-6">
                  <div class="about-image position-relative">
                    <img class="intro" src="assets/img/intro/2.jpg"  alt="">
                  </div>
                </div>

              </div>
            </div>
            <!-- END SLIDE 2 -->


            <!-- SLIDE 3 -->
            <div class="carousel-item">
              <div class="row align-items-center mb-5">

                <div class="col-lg-6">
                  <div class="content">
                    <h3>Your Journey, Our Priority</h3>
                    <p>We ensure every ride is safe, comfortable, and perfectly timed to match your travel needs.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> On-time Airport Pickups & Drop-offs</li>
                      <li><i class="bi bi-check-circle-fill"></i> Clean, Comfortable Vehicles</li>
                      <li><i class="bi bi-check-circle-fill"></i> Friendly & Professional Drivers</li>
                    </ul>
                  </div>
                </div>

                <div class="col-lg-6">
                  <img class="intro" src="assets/img/intro/3.jpg"  alt="">
                </div>
              </div>
            </div>
          </div>

          <!-- CONTROLS -->
          <button class="carousel-control-prev" type="button" data-bs-target="#contentImageSlider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </button>

          <button class="carousel-control-next" type="button" data-bs-target="#contentImageSlider" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
          </button>
        </div>
        <!-- End About Us Content -->

        <div id="call-to-action" class="call-to-action section light-background" style="padding: 30px 0;">
          <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="hero-content" data-aos="zoom-in" data-aos-delay="200">
               <div class="visual-element">
                <img src="assets/img/flash-deal.jpg" alt="Airport Transfer Flash Deal" class="hero-image d-none d-md-block" loading="lazy">
                <!-- <img src="assets/img/flash-deal-sm.jpg" alt="Airport Transfer Flash Deal" class="hero-image d-block d-md-none" loading="lazy"> -->
                <!-- <div class="image-overlay">
                  <div class="stat-item">
                    <span class="stat-number">25%</span>
                    <span class="stat-label">Off This Week</span>
                  </div>
                  <div class="stat-item">
                    <span class="stat-number">24/7</span>
                    <span class="stat-label">Service Available</span>
                  </div>
                </div> -->
              </div>
              <div class="content-wrapper">
                <div class="badge-wrapper">
                  
                 
                  <span class="promo-badge">Limited Time Offer</span>
                </div>

                <h4>Save Big on Airport Transfers!</h4>
                <p>
                  Book your ride now and enjoy exclusive discounts on airport and city transfers across Sri Lanka. 
                  Fast, reliable, and affordable — your next trip starts with savings!
                </p>

               <!-- <div class="action-section">
                  <div class="main-actions">
                     <a href="deals.html" class="btn btn-deals">
                      <i class="bi bi-percent"></i>
                      View Flash Deals
                    </a> 
                    <a href="[[~2]]" class="btn btn-explore">
                      <i class="bi bi-calendar-check"></i>
                      Book Now
                    </a>
                  </div>

                  <div class="quick-contact">
                    <span class="contact-label">Need assistance?</span>
                    <a href="tel:+94777786729" class="contact-link">
                      <i class="bi bi-telephone"></i>
                      Call +94 77 778 6729
                    </a>
                  </div>
                </div>-->
              </div>

             
            </div>
          </div>
        </div>

        <!-- Why Choose Us -->
        <div class="why-choose-section">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center mb-4" data-aos="fade-up" data-aos-delay="100">
                    <h3>Why Choose Us</h3>
                    <p>We pride ourselves on delivering reliable, comfortable, and affordable transfers across Sri Lanka. With professional drivers, well-maintained vehicles, and 24/7 customer support, we ensure your journey is smooth from start to finish.</p>
                </div>
            </div>

            <div class="row g-4">
              <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-card">
                  <div class="feature-icon">
                        <img src="assets/img/who_we/1.png" alt="Safe & Reliable" class="ss">
                    </div>
                    <h4>Safe & Reliable</h4>
                    <p>Your safety is our top priority with experienced, professional chauffeurs</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="250">
                  <div class="feature-card">
                    <div class="feature-icon">
                        <img src="assets/img/who_we/2.png" alt="Luxury Fleet" class="ss">
                    </div>
                    <h4>Luxury Fleet</h4>
                    <p>Choose from our well-maintained, chauffeur-driven premium vehicles.</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
                  <div class="feature-card">
                    <div class="feature-icon">
                      <img src="assets/img/who_we/3.png" alt="24/7 Support" class="ss">
                    </div>
                    <h4>24/7 Support</h4>
                    <p>Our friendly team is available around the clock for any assistance.</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="350">
                  <div class="feature-card">
                    <div class="feature-icon">
                      <img src="assets/img/who_we/4.png" alt="Meet & Greet Service" class="ss">
                    </div>
                    <h4>Meet & Greet Service</h4>
                    <p>Our chauffeurs will welcome you at the airport and escort you with care.</p>
                  </div>
                </div>
            </div>
          </div>
        </div>
    </section>
    <!-- /Why Us Section -->

    <!-- Gallery Slider Section -->
    <section id="gallery-slider" class="gallery-slider section pt-0">
      <div class="container section-title pb-3" data-aos="fade-up">
        <h2>Our Fleet</h2>
        <div><span>Comfortable</span> <span class="description-title">Airport Transfer Rides</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="gallery-container py-0">
          <div class="swiper init-swiper">

            <!-- Swiper Configuration -->
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 800,
                "autoplay": { "delay": 4000 },
                "effect": "coverflow",
                "grabCursor": true,
                "centeredSlides": true,
                "slidesPerView": "auto",
                "coverflowEffect": {
                  "rotate": 50,
                  "stretch": 0,
                  "depth": 100,
                  "modifier": 1,
                  "slideShadows": true
                },
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "navigation": {
                  "nextEl": ".swiper-button-next",
                  "prevEl": ".swiper-button-prev"
                },
                "breakpoints": {
                  "320": { "slidesPerView": 1, "spaceBetween": 10 },
                  "768": { "slidesPerView": 2, "spaceBetween": 20 },
                  "1024": { "slidesPerView": 3, "spaceBetween": 30 }
                }
              }
            </script>


            <!-- ========== SWIPER SLIDES ========== -->
            <div class="swiper-wrapper">

              <!-- Vehicle 1 -->
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Bussiness</div>
                    <img src="assets/img/vehicles/1.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                            <div class="info-item">
                                <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                            </div>

                            <div class="info-item">
                                <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                            </div>

                            <div class="info-item">
                                <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                            </div>
                        </div>

                        <button class="vehicle-overlay-btn"
                            data-vehicle=\'{
                                "title":"Private Bussiness",
                                "img":"assets/img/vehicles/1.png",
                                "desc":"Perfect for business travelers and couples seeking premium comfort.",
                                "features":["Leather Seats","USB Charging","Complimentary Water","Climate Control"],
                                "capacity":"1–3 passengers"
                                }\'>
                            View Details
                        </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Express</div>
                    <img src="assets/img/vehicles/2.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Express",
                          "img":"assets/img/vehicles/2.png",
                          "desc":"Ideal for families and groups needing space and luxury.",
                          "features":["Premium Leather","Rear AC","Spacious Seats","All-Terrain Safety"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Coach (45 Seater)</div>
                    <img src="assets/img/vehicles/3.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 45
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Coach (45 Seater)",
                          "img":"assets/img/vehicles/3.png",
                          "desc":"Perfect for corporate travel with extra luggage capacity.",
                          "features":["Conference Seating","Tinted Windows","USB Ports","Large Trunk"],
                          "capacity":"45 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private SUV</div>
                    <img src="assets/img/vehicles/4.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 2
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private SUV",
                          "img":"assets/img/vehicles/4.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–2 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Luxury SUV</div>
                    <img src="assets/img/vehicles/10.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Luxury SUV",
                          "img":"assets/img/vehicles/10.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Business</div>
                    <img src="assets/img/vehicles/1.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Business",
                          "img":"assets/img/vehicles/1.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Premium</div>
                    <img src="assets/img/vehicles/9.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Premium",
                          "img":"assets/img/vehicles/9.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Coach (35 Seater)</div>
                    <img src="assets/img/vehicles/8.jpg" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 6 Large | 6 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 12
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Coach (35 Seater)",
                          "img":"assets/img/vehicles/8.jpg",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"12 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private MPV</div>
                    <img src="assets/img/vehicles/5.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 6
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private MPV",
                          "img":"assets/img/vehicles/5.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–2 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Van</div>
                    <img src="assets/img/vehicles/6.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 6
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Van",
                          "img":"assets/img/vehicles/6.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1-6 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Mini Bus</div>
                    <img src="assets/img/vehicles/7.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 12
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Mini Bus",
                          "img":"assets/img/vehicles/7.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1-12 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
        </div>
      </div>
    </section>

    <style>
        .vehicle-name {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            background: rgb(241 241 241 / 88%);
            color: #fff;
            padding: 6px 15px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            opacity: 0;
            transition: 0.3s ease-in-out;
            z-index: 4;
            width: 100%;
            color: #000080;
            text-align: center;
        }

        .gallery-img-overlay:hover .vehicle-name {
            opacity: 1;
            transform: translate(-50%, 0);
        }

      .vehicle-info {
        position: absolute;
        background: rgb(241 241 241 / 88%);
        padding: 12px 18px;
        border-radius: 10px;
        width: 100%;
        text-align: left;
        color: #fff;
        opacity: 0;
        transform: translateY(10px);
        transition: 0.35s ease;
        display: flex;
        flex-direction: column;
        gap: 6px;
        font-size: 14px;
        z-index: 3;
      }

      .gallery-img-overlay:hover .vehicle-info {
        opacity: 1;
        transform: translateY(0px);
      }

      .info-item {
        display: flex;
        align-items: center;
        gap: 6px;
        font-weight: 500;
        color: #010b40;
      }

      .gallery-img-overlay:hover img {
        transform: scale(1.05);
        opacity: 1;
      }

      .gallery-img-overlay:hover .vehicle-overlay-btn {
        transform: translateY(-100px);
      }

      .passenger-count, .cancellation, .suitcases {
        position: absolute;
        bottom: 0;
        background: rgba(0, 0, 0, 1);
        color: #fff;
        padding: 6px 14px;
        border-radius: 6px;
        font-size: 14px;
        font-weight: 600;
        opacity: 0;
        transform: translateY(10px);
        transition: 0.3s ease;
      }

      .gallery-img-overlay:hover .passenger-count, .cancellation, .suitcases {
        opacity: 1;
        transform: translateY(0px);
      }

      .vehicle-overlay-btn {
        padding: 10px 22px;
        background: #ffffff38;
        color: #fff;
        border: none;
        font-size: 16px;
        border-radius: 8px;
        font-weight: 600;
        cursor: pointer;
        box-shadow: 0 4px 15px rgba(0,0,0,0.3);
        transition: 0.3s ease;
        width: 100%;
        position: relative;
        z-index: 2;
      }

      .vehicle-overlay {
        position: absolute;
        inset: 0;
        display: flex;
        flex-direction: column;
        justify-content: end;
        align-items: center;
      }
    </style>

    <div class="modal fade" id="vehicleModal" tabindex="-1">
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-header">
            <h5 class="modal-title" id="vehicleTitle"></h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body">
            <img id="vehicleImg" class="modal-vehicle-img mb-3">
            <p id="vehicleDesc"></p>

            <h6 class="mt-3">Features:</h6>
            <ul id="vehicleFeatures"></ul>

            <p class="mt-2 mb-0"><strong>Capacity: </strong><span id="vehicleCapacity"></span></p>
          </div>

          <div class="modal-footer">
            <button class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <a href="[[~7]]" class="btn btn-primary">Book Now</a>
          </div>
        </div>
      </div>
    </div>

    <script>
      document.querySelectorAll(".vehicle-overlay-btn").forEach(btn => {
        btn.addEventListener("click", () => {
          const v = JSON.parse(btn.getAttribute("data-vehicle"));

          document.getElementById("vehicleTitle").innerText = v.title;
          document.getElementById("vehicleImg").src = v.img;
          document.getElementById("vehicleDesc").innerText = v.desc;

          const list = document.getElementById("vehicleFeatures");
          list.innerHTML = "";
          v.features.forEach(f => {
            list.innerHTML += `<li class="vehicle-feature">${f}</li>`;
          });

          document.getElementById("vehicleCapacity").innerText = v.capacity;

          new bootstrap.Modal(document.getElementById("vehicleModal")).show();
        });
      });
    </script>
    <!-- /Gallery Slider Section -->


    <!-- Featured Destinations Section -->
    <section id="featured-destinations" class="featured-destinations section pt-3">
      <div class="container section-title">
        <h2>Featured Destinations</h2>
        <div><span>Most Popular</span> <span class="description-title">Destinations</span></div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="featured-destination">
              <div class="destination-overlay">
                <img src="assets/img/travel/destination-3.jpg" alt="Tropical Paradise" class="img-fluid">
                <div class="destination-info">
                  <a href="[[~3]]" class="explore-btn">
                    <span>Explore Now</span>
                    <i class="bi bi-arrow-right"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
              <div class="row g-3">
                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-7.jpg" alt="Mountain Adventure" class="img-fluid">
                      <div class="badge-offer">Most Visited</div>
                    </div>
                    <div class="destination-details">
                        <h4>Kandy</h4>
                        <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                        <p class="brief">Nestled in lush hills, Kandy enchants visitors with its sacred Temple of the Tooth, serene lakes, and timeless cultural heritage.</p>
                        <a href="[[~3]]" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>

                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-11.jpg" alt="Cultural Heritage" class="img-fluid">
                    </div>
                    <div class="destination-details">
                      <h4>Sigiriya</h4>
                      <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                      <p class="brief">Climb the majestic Lion Rock and explore ancient frescoes, royal gardens, and the breathtaking legacy of a lost kingdom.</p>
                      <a href="[[~3]]" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>

                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-16.jpg" alt="Safari Experience" class="img-fluid">
                      <div class="badge-offer limited">Scenic</div>
                    </div>
                    <div class="destination-details">
                      <h4>Nuwara Eliya</h4>
                      <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                      <p class="brief">Wander through lush tea plantations, misty hills, and charming colonial cottages in Sri Lanka’s “Little England.”</p>
                      <a href="[[~3]]" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /Featured Destinations Section -->


    <!-- Testimonials Home Section -->
    <section id="testimonials-home" class="testimonials-home section">
      <div class="container section-title" data-aos="fade-up">
        <h2>Testimonials</h2>
        <div><span>What Customers</span> <span class="description-title">Say</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper init-swiper">
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 600,
                "autoplay": {
                  "delay": 5000
                },
                "slidesPerView": "auto",
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "breakpoints": {
                  "320": {
                    "slidesPerView": 1,
                    "spaceBetween": 40
                  },
                  "1200": {
                    "slidesPerView": 3,
                    "spaceBetween": 1
                  }
                }
              }
            </script>

            <div class="swiper-wrapper">
              [[!GoogleReviews]]
            </div>
            <div class="swiper-pagination"></div>
          </div>
      </div>
    </section>
    <!-- /Testimonials Home Section -->
     
  </main>

</body>
',
    'richtext' => 1,
    'template' => 2,
    'menuindex' => 0,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1762926553,
    'editedby' => 1,
    'editedon' => 1763717428,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 0,
    'publishedby' => 0,
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
            <a href="tel:+94767989878" style="color:white; text-decoration: none;">
                <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 76 798 9878
            </a>
            &nbsp;|&nbsp;
            <a href="mailto:transfers@srilankarentacar.com" style="color:white; text-decoration: none;">
                <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> transfers@srilankarentacar.com
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
                        <li class="nav-item"><a class="nav-link" href="index.php?id=2">ABOUT US</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Express</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private MPV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Van</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Mini Bus</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/10.png" alt="Luxury SUV" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Business</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/9.png" alt="Private Premium" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Premium</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/8.png" alt="Private Coach (35 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (35 Seater)</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/7.png" alt="Private Coach (45 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (45 Seater)</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="index.php?id=7" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=3">DESTINATIONS</a></li>
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


<body class="index-page">

  <main class="main">

    <!-- Travel Hero Section -->
    <section id="travel-hero" class="travel-hero section dark-background">
        <div class="hero-background">
            <video autoplay="" muted="" loop="">
                <source src="assets/video/preview.mp4" type="video/mp4">
            </video>
            <div class="hero-overlay"></div>
        </div>

        <div class="container position-relative" style="bottom: 26%;">
            <div class="row">
                <div class="col-lg-7 col-xl-5">
                    <div class="booking-form-wrapper" data-aos="fade-left" data-aos-delay="200">
                        <div class="booking-form">
                            <h3 class="form-title">Schedule Your Ride</h3>
                            <form action="index.php?id=7" method="post">
                                <!-- Pickup / Drop-off Row -->
                                <div class="row g-2 align-items-center">
                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="text" name="pickupLocation" id="pickupLocation" class="form-control" placeholder="Arrival airport" required>
                                    </div>
                                    </div>

                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="text" name="dropoffLocation" id="dropoffLocation" class="form-control" placeholder="Going to" required>
                                    </div>
                                    </div>
                                </div>

                                <!-- Departure Date & Roundtrip Checkbox -->
                                <div class="row g-2 align-items-center mb-3">
                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="datetime-local" name="date" id="date" class="form-control" required>
                                    </div>
                                    </div>
                                    <div class="col-md-6 d-flex align-items-center justify-content-center">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="roundtripCheck">
                                        <label class="form-check-label" for="roundtripCheck">Roundtrip</label>
                                    </div>
                                    </div>
                                </div>

                                <!-- Return Trip Fields (hidden by default) -->
                                <div id="returnDetails" style="display:none;">
                                    <div class="row g-2 align-items-center">
                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                            <input type="text" name="returnPickup" id="returnPickup" class="form-control" placeholder="Return Pickup Location">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                            <input type="text" name="returnDropoff" id="returnDropoff" class="form-control" placeholder="Return Drop-off Location">
                                            </div>
                                        </div>
                                    </div>

                                        <div class="form-group mb-3">
                                        <input type="datetime-local" name="returnDate" id="returnDate" class="form-control">
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary w-100">Find Your Transfer</button>
                            </form>

                            <!-- Google Maps Autocomplete + Roundtrip -->
                            <script>
                            const pickupInput = document.getElementById(\'pickupLocation\');
                            const dropoffInput = document.getElementById(\'dropoffLocation\');
                            const returnPickup = document.getElementById(\'returnPickup\');
                            const returnDropoff = document.getElementById(\'returnDropoff\');
                            const roundtripCheck = document.getElementById(\'roundtripCheck\');
                            const returnDetails = document.getElementById(\'returnDetails\');

                            // Show/hide return details
                            roundtripCheck.addEventListener(\'change\', () => {
                                returnDetails.style.display = roundtripCheck.checked ? \'block\' : \'none\';
                            });

                            function initAutocomplete() {
                                const options = { componentRestrictions: { country: \'lk\' } };
                                new google.maps.places.Autocomplete(pickupInput, options);
                                new google.maps.places.Autocomplete(dropoffInput, options);

                                if(returnPickup) new google.maps.places.Autocomplete(returnPickup, options);
                                if(returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options);
                            }

                            window.initAutocomplete = initAutocomplete;
                            </script>

                            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places&callback=initAutocomplete" async defer></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Travel Hero Section -->


    <!-- Why Us Section -->
    <section id="why-us" class="why-us section">
      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <!-- About Us Content -->
        <div id="contentImageSlider" class="carousel slide" data-bs-ride="carousel">

          <div class="carousel-inner">

            <!-- SLIDE 1 -->
            <div class="carousel-item active">
              <div class="row align-items-center mb-5">
                
                <!-- CONTENT -->
                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="200">
                  <div class="content">
                    <h3>Explore the World with Confidence</h3>
                    <p class="mb-0">Enjoy hassle-free airport transfers with reliable, comfortable, and punctual service every time.</p>
                    <p>Whether you\'re arriving or departing, we ensure a smooth, safe, and stress-free journey to your destination.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> Professional and Experienced Drivers</li>
                      <li><i class="bi bi-check-circle-fill"></i> Wide Range of Well-Maintained Vehicles</li>
                      <li><i class="bi bi-check-circle-fill"></i> 24/7 Customer Support</li>
                    </ul>
                  </div>
                </div>

                <!-- IMAGE -->
                <div class="col-lg-6" data-aos="fade-left" data-aos-delay="300">
                  <div class="about-image position-relative">
                    <img class="intro" src="assets/img/intro/1.jpg"  alt="">
                    <div class="experience-badge">
                      <div class="experience-number">15+</div>
                      <div class="experience-text">Years of Excellence</div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <!-- END SLIDE 1 -->


            <!-- SLIDE 2 -->
            <div class="carousel-item">
              <div class="row align-items-center mb-5">

                <div class="col-lg-6">
                  <div class="content">
                    <h3>Seamless Travel Solutions</h3>
                    <p>Experience smooth and stress-free airport transfers with timely pickups, comfortable vehicles, and friendly service from start to finish.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> Reliable Service</li>
                      <li><i class="bi bi-check-circle-fill"></i> Affordable Prices</li>
                      <li><i class="bi bi-check-circle-fill"></i> Islandwide Support</li>
                    </ul>
                  </div>
                </div>

                <div class="col-lg-6">
                  <div class="about-image position-relative">
                    <img class="intro" src="assets/img/intro/2.jpg"  alt="">
                  </div>
                </div>

              </div>
            </div>
            <!-- END SLIDE 2 -->


            <!-- SLIDE 3 -->
            <div class="carousel-item">
              <div class="row align-items-center mb-5">

                <div class="col-lg-6">
                  <div class="content">
                    <h3>Your Journey, Our Priority</h3>
                    <p>We ensure every ride is safe, comfortable, and perfectly timed to match your travel needs.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> On-time Airport Pickups & Drop-offs</li>
                      <li><i class="bi bi-check-circle-fill"></i> Clean, Comfortable Vehicles</li>
                      <li><i class="bi bi-check-circle-fill"></i> Friendly & Professional Drivers</li>
                    </ul>
                  </div>
                </div>

                <div class="col-lg-6">
                  <img class="intro" src="assets/img/intro/3.jpg"  alt="">
                </div>
              </div>
            </div>
          </div>

          <!-- CONTROLS -->
          <button class="carousel-control-prev" type="button" data-bs-target="#contentImageSlider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </button>

          <button class="carousel-control-next" type="button" data-bs-target="#contentImageSlider" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
          </button>
        </div>
        <!-- End About Us Content -->

        <div id="call-to-action" class="call-to-action section light-background" style="padding: 30px 0;">
          <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="hero-content" data-aos="zoom-in" data-aos-delay="200">
               <div class="visual-element">
                <img src="assets/img/flash-deal.jpg" alt="Airport Transfer Flash Deal" class="hero-image d-none d-md-block" loading="lazy">
                <!-- <img src="assets/img/flash-deal-sm.jpg" alt="Airport Transfer Flash Deal" class="hero-image d-block d-md-none" loading="lazy"> -->
                <!-- <div class="image-overlay">
                  <div class="stat-item">
                    <span class="stat-number">25%</span>
                    <span class="stat-label">Off This Week</span>
                  </div>
                  <div class="stat-item">
                    <span class="stat-number">24/7</span>
                    <span class="stat-label">Service Available</span>
                  </div>
                </div> -->
              </div>
              <div class="content-wrapper">
                <div class="badge-wrapper">
                  
                 
                  <span class="promo-badge">Limited Time Offer</span>
                </div>

                <h4>Save Big on Airport Transfers!</h4>
                <p>
                  Book your ride now and enjoy exclusive discounts on airport and city transfers across Sri Lanka. 
                  Fast, reliable, and affordable — your next trip starts with savings!
                </p>

               <!-- <div class="action-section">
                  <div class="main-actions">
                     <a href="deals.html" class="btn btn-deals">
                      <i class="bi bi-percent"></i>
                      View Flash Deals
                    </a> 
                    <a href="index.php?id=2" class="btn btn-explore">
                      <i class="bi bi-calendar-check"></i>
                      Book Now
                    </a>
                  </div>

                  <div class="quick-contact">
                    <span class="contact-label">Need assistance?</span>
                    <a href="tel:+94777786729" class="contact-link">
                      <i class="bi bi-telephone"></i>
                      Call +94 77 778 6729
                    </a>
                  </div>
                </div>-->
              </div>

             
            </div>
          </div>
        </div>

        <!-- Why Choose Us -->
        <div class="why-choose-section">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center mb-4" data-aos="fade-up" data-aos-delay="100">
                    <h3>Why Choose Us</h3>
                    <p>We pride ourselves on delivering reliable, comfortable, and affordable transfers across Sri Lanka. With professional drivers, well-maintained vehicles, and 24/7 customer support, we ensure your journey is smooth from start to finish.</p>
                </div>
            </div>

            <div class="row g-4">
              <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-card">
                  <div class="feature-icon">
                        <img src="assets/img/who_we/1.png" alt="Safe & Reliable" class="ss">
                    </div>
                    <h4>Safe & Reliable</h4>
                    <p>Your safety is our top priority with experienced, professional chauffeurs</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="250">
                  <div class="feature-card">
                    <div class="feature-icon">
                        <img src="assets/img/who_we/2.png" alt="Luxury Fleet" class="ss">
                    </div>
                    <h4>Luxury Fleet</h4>
                    <p>Choose from our well-maintained, chauffeur-driven premium vehicles.</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
                  <div class="feature-card">
                    <div class="feature-icon">
                      <img src="assets/img/who_we/3.png" alt="24/7 Support" class="ss">
                    </div>
                    <h4>24/7 Support</h4>
                    <p>Our friendly team is available around the clock for any assistance.</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="350">
                  <div class="feature-card">
                    <div class="feature-icon">
                      <img src="assets/img/who_we/4.png" alt="Meet & Greet Service" class="ss">
                    </div>
                    <h4>Meet & Greet Service</h4>
                    <p>Our chauffeurs will welcome you at the airport and escort you with care.</p>
                  </div>
                </div>
            </div>
          </div>
        </div>
    </section>
    <!-- /Why Us Section -->

    <!-- Gallery Slider Section -->
    <section id="gallery-slider" class="gallery-slider section pt-0">
      <div class="container section-title pb-3" data-aos="fade-up">
        <h2>Our Fleet</h2>
        <div><span>Comfortable</span> <span class="description-title">Airport Transfer Rides</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="gallery-container py-0">
          <div class="swiper init-swiper">

            <!-- Swiper Configuration -->
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 800,
                "autoplay": { "delay": 4000 },
                "effect": "coverflow",
                "grabCursor": true,
                "centeredSlides": true,
                "slidesPerView": "auto",
                "coverflowEffect": {
                  "rotate": 50,
                  "stretch": 0,
                  "depth": 100,
                  "modifier": 1,
                  "slideShadows": true
                },
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "navigation": {
                  "nextEl": ".swiper-button-next",
                  "prevEl": ".swiper-button-prev"
                },
                "breakpoints": {
                  "320": { "slidesPerView": 1, "spaceBetween": 10 },
                  "768": { "slidesPerView": 2, "spaceBetween": 20 },
                  "1024": { "slidesPerView": 3, "spaceBetween": 30 }
                }
              }
            </script>


            <!-- ========== SWIPER SLIDES ========== -->
            <div class="swiper-wrapper">

              <!-- Vehicle 1 -->
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Bussiness</div>
                    <img src="assets/img/vehicles/1.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                            <div class="info-item">
                                <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                            </div>

                            <div class="info-item">
                                <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                            </div>

                            <div class="info-item">
                                <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                            </div>
                        </div>

                        <button class="vehicle-overlay-btn"
                            data-vehicle=\'{
                                "title":"Private Bussiness",
                                "img":"assets/img/vehicles/1.png",
                                "desc":"Perfect for business travelers and couples seeking premium comfort.",
                                "features":["Leather Seats","USB Charging","Complimentary Water","Climate Control"],
                                "capacity":"1–3 passengers"
                                }\'>
                            View Details
                        </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Express</div>
                    <img src="assets/img/vehicles/2.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Express",
                          "img":"assets/img/vehicles/2.png",
                          "desc":"Ideal for families and groups needing space and luxury.",
                          "features":["Premium Leather","Rear AC","Spacious Seats","All-Terrain Safety"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Coach (45 Seater)</div>
                    <img src="assets/img/vehicles/3.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 45
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Coach (45 Seater)",
                          "img":"assets/img/vehicles/3.png",
                          "desc":"Perfect for corporate travel with extra luggage capacity.",
                          "features":["Conference Seating","Tinted Windows","USB Ports","Large Trunk"],
                          "capacity":"45 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private SUV</div>
                    <img src="assets/img/vehicles/4.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 2
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private SUV",
                          "img":"assets/img/vehicles/4.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–2 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Luxury SUV</div>
                    <img src="assets/img/vehicles/10.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Luxury SUV",
                          "img":"assets/img/vehicles/10.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Business</div>
                    <img src="assets/img/vehicles/1.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Business",
                          "img":"assets/img/vehicles/1.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Premium</div>
                    <img src="assets/img/vehicles/9.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Premium",
                          "img":"assets/img/vehicles/9.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–3 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Coach (35 Seater)</div>
                    <img src="assets/img/vehicles/8.jpg" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 6 Large | 6 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 12
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Coach (35 Seater)",
                          "img":"assets/img/vehicles/8.jpg",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"12 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private MPV</div>
                    <img src="assets/img/vehicles/5.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 6
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private MPV",
                          "img":"assets/img/vehicles/5.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–2 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Van</div>
                    <img src="assets/img/vehicles/6.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 6
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Van",
                          "img":"assets/img/vehicles/6.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1-6 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Private Mini Bus</div>
                    <img src="assets/img/vehicles/7.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#25D366; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#25D366; margin-right:6px;"></i>Passengers : 12
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#25D366; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle=\'{
                          "title":"Private Mini Bus",
                          "img":"assets/img/vehicles/7.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1-12 passengers"
                        }\'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
        </div>
      </div>
    </section>

    <style>
        .vehicle-name {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            background: rgb(241 241 241 / 88%);
            color: #fff;
            padding: 6px 15px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            opacity: 0;
            transition: 0.3s ease-in-out;
            z-index: 4;
            width: 100%;
            color: #000080;
            text-align: center;
        }

        .gallery-img-overlay:hover .vehicle-name {
            opacity: 1;
            transform: translate(-50%, 0);
        }

      .vehicle-info {
        position: absolute;
        background: rgb(241 241 241 / 88%);
        padding: 12px 18px;
        border-radius: 10px;
        width: 100%;
        text-align: left;
        color: #fff;
        opacity: 0;
        transform: translateY(10px);
        transition: 0.35s ease;
        display: flex;
        flex-direction: column;
        gap: 6px;
        font-size: 14px;
        z-index: 3;
      }

      .gallery-img-overlay:hover .vehicle-info {
        opacity: 1;
        transform: translateY(0px);
      }

      .info-item {
        display: flex;
        align-items: center;
        gap: 6px;
        font-weight: 500;
        color: #010b40;
      }

      .gallery-img-overlay:hover img {
        transform: scale(1.05);
        opacity: 1;
      }

      .gallery-img-overlay:hover .vehicle-overlay-btn {
        transform: translateY(-100px);
      }

      .passenger-count, .cancellation, .suitcases {
        position: absolute;
        bottom: 0;
        background: rgba(0, 0, 0, 1);
        color: #fff;
        padding: 6px 14px;
        border-radius: 6px;
        font-size: 14px;
        font-weight: 600;
        opacity: 0;
        transform: translateY(10px);
        transition: 0.3s ease;
      }

      .gallery-img-overlay:hover .passenger-count, .cancellation, .suitcases {
        opacity: 1;
        transform: translateY(0px);
      }

      .vehicle-overlay-btn {
        padding: 10px 22px;
        background: #ffffff38;
        color: #fff;
        border: none;
        font-size: 16px;
        border-radius: 8px;
        font-weight: 600;
        cursor: pointer;
        box-shadow: 0 4px 15px rgba(0,0,0,0.3);
        transition: 0.3s ease;
        width: 100%;
        position: relative;
        z-index: 2;
      }

      .vehicle-overlay {
        position: absolute;
        inset: 0;
        display: flex;
        flex-direction: column;
        justify-content: end;
        align-items: center;
      }
    </style>

    <div class="modal fade" id="vehicleModal" tabindex="-1">
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-header">
            <h5 class="modal-title" id="vehicleTitle"></h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body">
            <img id="vehicleImg" class="modal-vehicle-img mb-3">
            <p id="vehicleDesc"></p>

            <h6 class="mt-3">Features:</h6>
            <ul id="vehicleFeatures"></ul>

            <p class="mt-2 mb-0"><strong>Capacity: </strong><span id="vehicleCapacity"></span></p>
          </div>

          <div class="modal-footer">
            <button class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <a href="index.php?id=7" class="btn btn-primary">Book Now</a>
          </div>
        </div>
      </div>
    </div>

    <script>
      document.querySelectorAll(".vehicle-overlay-btn").forEach(btn => {
        btn.addEventListener("click", () => {
          const v = JSON.parse(btn.getAttribute("data-vehicle"));

          document.getElementById("vehicleTitle").innerText = v.title;
          document.getElementById("vehicleImg").src = v.img;
          document.getElementById("vehicleDesc").innerText = v.desc;

          const list = document.getElementById("vehicleFeatures");
          list.innerHTML = "";
          v.features.forEach(f => {
            list.innerHTML += `<li class="vehicle-feature">${f}</li>`;
          });

          document.getElementById("vehicleCapacity").innerText = v.capacity;

          new bootstrap.Modal(document.getElementById("vehicleModal")).show();
        });
      });
    </script>
    <!-- /Gallery Slider Section -->


    <!-- Featured Destinations Section -->
    <section id="featured-destinations" class="featured-destinations section pt-3">
      <div class="container section-title">
        <h2>Featured Destinations</h2>
        <div><span>Most Popular</span> <span class="description-title">Destinations</span></div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="featured-destination">
              <div class="destination-overlay">
                <img src="assets/img/travel/destination-3.jpg" alt="Tropical Paradise" class="img-fluid">
                <div class="destination-info">
                  <a href="index.php?id=3" class="explore-btn">
                    <span>Explore Now</span>
                    <i class="bi bi-arrow-right"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
              <div class="row g-3">
                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-7.jpg" alt="Mountain Adventure" class="img-fluid">
                      <div class="badge-offer">Most Visited</div>
                    </div>
                    <div class="destination-details">
                        <h4>Kandy</h4>
                        <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                        <p class="brief">Nestled in lush hills, Kandy enchants visitors with its sacred Temple of the Tooth, serene lakes, and timeless cultural heritage.</p>
                        <a href="index.php?id=3" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>

                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-11.jpg" alt="Cultural Heritage" class="img-fluid">
                    </div>
                    <div class="destination-details">
                      <h4>Sigiriya</h4>
                      <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                      <p class="brief">Climb the majestic Lion Rock and explore ancient frescoes, royal gardens, and the breathtaking legacy of a lost kingdom.</p>
                      <a href="index.php?id=3" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>

                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-16.jpg" alt="Safari Experience" class="img-fluid">
                      <div class="badge-offer limited">Scenic</div>
                    </div>
                    <div class="destination-details">
                      <h4>Nuwara Eliya</h4>
                      <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                      <p class="brief">Wander through lush tea plantations, misty hills, and charming colonial cottages in Sri Lanka’s “Little England.”</p>
                      <a href="index.php?id=3" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /Featured Destinations Section -->


    <!-- Testimonials Home Section -->
    <section id="testimonials-home" class="testimonials-home section">
      <div class="container section-title" data-aos="fade-up">
        <h2>Testimonials</h2>
        <div><span>What Customers</span> <span class="description-title">Say</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper init-swiper">
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 600,
                "autoplay": {
                  "delay": 5000
                },
                "slidesPerView": "auto",
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "breakpoints": {
                  "320": {
                    "slidesPerView": 1,
                    "spaceBetween": 40
                  },
                  "1200": {
                    "slidesPerView": 3,
                    "spaceBetween": 1
                  }
                }
              }
            </script>

            <div class="swiper-wrapper">
              [[!GoogleReviews]]
            </div>
            <div class="swiper-pagination"></div>
          </div>
      </div>
    </section>
    <!-- /Testimonials Home Section -->
     
  </main>

</body>

<div class="toast-container position-fixed bottom-0 end-0 p-3" style="z-index: 20000;">
    <div id="toast1" class="toast text-bg-dark border-0">
        <div class="d-flex">
            <div class="toast-body">⏱️ No extra charges for flight delays — we wait for you for FREE!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast2" class="toast text-bg-info border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">ℹ️ Free cancellation on all bookings!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast4" class="toast text-bg-success border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">✈️ Airport Pickup Available 24/7 — <strong> Book Instantly!</strong></div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
</div>


<style>
    .toast-container {
        display: flex;
        flex-direction: column-reverse; 
        gap: 10px;
        margin-bottom: 3%;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const toastIds = ["toast1", "toast2", "toast4"];
        let index = 0;

        function showNextToast() {
            if (index >= toastIds.length) return;

            const toastEl = document.getElementById(toastIds[index]);
            const toast = new bootstrap.Toast(toastEl, {
                autohide: false,   
                animation: true
            });

            toast.show();
            index++;

            setTimeout(showNextToast, 700); 
        }

        showNextToast();

        setTimeout(() => {
            toastIds.forEach(id => {
                const el = document.getElementById(id);
                const t = bootstrap.Toast.getOrCreateInstance(el);
                t.hide();
            });
        }, 5000); 
    });
</script>

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
                <a href="mailto:transfers@srilankarentacar.com" class="text-decoration-none"> transfers@srilankarentacar.com</a>
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
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <i class="bi bi-whatsapp"></i>
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p>Hello! 👋How can we assist you today with your transfer or booking?</p>
        <textarea id="wa-chat-input" placeholder="Type your message..."></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94767989878";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information 😊";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
',
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
    '[[~2]]' => 'index.php?id=2',
    '[[~7]]' => 'index.php?id=7',
    '[[~3]]' => 'index.php?id=3',
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
            <a href="tel:+94767989878" style="color:white; text-decoration: none;">
                <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 76 798 9878
            </a>
            &nbsp;|&nbsp;
            <a href="mailto:transfers@srilankarentacar.com" style="color:white; text-decoration: none;">
                <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> transfers@srilankarentacar.com
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
                        <li class="nav-item"><a class="nav-link" href="index.php?id=2">ABOUT US</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Express</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private MPV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Van</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Mini Bus</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/10.png" alt="Luxury SUV" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Business</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/9.png" alt="Private Premium" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Premium</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/8.png" alt="Private Coach (35 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (35 Seater)</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/7.png" alt="Private Coach (45 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (45 Seater)</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="index.php?id=7" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=3">DESTINATIONS</a></li>
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
    '[[$footer?]]' => '<div class="toast-container position-fixed bottom-0 end-0 p-3" style="z-index: 20000;">
    <div id="toast1" class="toast text-bg-dark border-0">
        <div class="d-flex">
            <div class="toast-body">⏱️ No extra charges for flight delays — we wait for you for FREE!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast2" class="toast text-bg-info border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">ℹ️ Free cancellation on all bookings!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast4" class="toast text-bg-success border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">✈️ Airport Pickup Available 24/7 — <strong> Book Instantly!</strong></div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
</div>


<style>
    .toast-container {
        display: flex;
        flex-direction: column-reverse; 
        gap: 10px;
        margin-bottom: 3%;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const toastIds = ["toast1", "toast2", "toast4"];
        let index = 0;

        function showNextToast() {
            if (index >= toastIds.length) return;

            const toastEl = document.getElementById(toastIds[index]);
            const toast = new bootstrap.Toast(toastEl, {
                autohide: false,   
                animation: true
            });

            toast.show();
            index++;

            setTimeout(showNextToast, 700); 
        }

        showNextToast();

        setTimeout(() => {
            toastIds.forEach(id => {
                const el = document.getElementById(id);
                const t = bootstrap.Toast.getOrCreateInstance(el);
                t.hide();
            });
        }, 5000); 
    });
</script>

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
                <a href="mailto:transfers@srilankarentacar.com" class="text-decoration-none"> transfers@srilankarentacar.com</a>
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
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <i class="bi bi-whatsapp"></i>
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p>Hello! 👋How can we assist you today with your transfer or booking?</p>
        <textarea id="wa-chat-input" placeholder="Type your message..."></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94767989878";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information 😊";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
',
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
            <a href="tel:+94767989878" style="color:white; text-decoration: none;">
                <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 76 798 9878
            </a>
            &nbsp;|&nbsp;
            <a href="mailto:transfers@srilankarentacar.com" style="color:white; text-decoration: none;">
                <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> transfers@srilankarentacar.com
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
                        <li class="nav-item"><a class="nav-link" href="[[~2]]">ABOUT US</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Express</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private MPV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Van</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Mini Bus</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/10.png" alt="Luxury SUV" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Business</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/9.png" alt="Private Premium" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Premium</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/8.png" alt="Private Coach (35 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (35 Seater)</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/7.png" alt="Private Coach (45 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (45 Seater)</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="[[~7]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="[[~3]]">DESTINATIONS</a></li>
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
            <a href="tel:+94767989878" style="color:white; text-decoration: none;">
                <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 76 798 9878
            </a>
            &nbsp;|&nbsp;
            <a href="mailto:transfers@srilankarentacar.com" style="color:white; text-decoration: none;">
                <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> transfers@srilankarentacar.com
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
                        <li class="nav-item"><a class="nav-link" href="[[~2]]">ABOUT US</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Express</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private MPV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Van</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Mini Bus</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/10.png" alt="Luxury SUV" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury SUV</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Business</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/9.png" alt="Private Premium" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Premium</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/8.png" alt="Private Coach (35 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (35 Seater)</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/7.png" alt="Private Coach (45 Seater)" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Private Coach (45 Seater)</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="[[~7]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="[[~3]]">DESTINATIONS</a></li>
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
          'snippet' => '<div class="toast-container position-fixed bottom-0 end-0 p-3" style="z-index: 20000;">
    <div id="toast1" class="toast text-bg-dark border-0">
        <div class="d-flex">
            <div class="toast-body">⏱️ No extra charges for flight delays — we wait for you for FREE!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast2" class="toast text-bg-info border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">ℹ️ Free cancellation on all bookings!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast4" class="toast text-bg-success border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">✈️ Airport Pickup Available 24/7 — <strong> Book Instantly!</strong></div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
</div>


<style>
    .toast-container {
        display: flex;
        flex-direction: column-reverse; 
        gap: 10px;
        margin-bottom: 3%;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const toastIds = ["toast1", "toast2", "toast4"];
        let index = 0;

        function showNextToast() {
            if (index >= toastIds.length) return;

            const toastEl = document.getElementById(toastIds[index]);
            const toast = new bootstrap.Toast(toastEl, {
                autohide: false,   
                animation: true
            });

            toast.show();
            index++;

            setTimeout(showNextToast, 700); 
        }

        showNextToast();

        setTimeout(() => {
            toastIds.forEach(id => {
                const el = document.getElementById(id);
                const t = bootstrap.Toast.getOrCreateInstance(el);
                t.hide();
            });
        }, 5000); 
    });
</script>

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
                <a href="mailto:transfers@srilankarentacar.com" class="text-decoration-none"> transfers@srilankarentacar.com</a>
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
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <i class="bi bi-whatsapp"></i>
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p>Hello! 👋How can we assist you today with your transfer or booking?</p>
        <textarea id="wa-chat-input" placeholder="Type your message..."></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94767989878";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information 😊";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<div class="toast-container position-fixed bottom-0 end-0 p-3" style="z-index: 20000;">
    <div id="toast1" class="toast text-bg-dark border-0">
        <div class="d-flex">
            <div class="toast-body">⏱️ No extra charges for flight delays — we wait for you for FREE!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast2" class="toast text-bg-info border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">ℹ️ Free cancellation on all bookings!</div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="toast4" class="toast text-bg-success border-0 mb-2">
        <div class="d-flex">
            <div class="toast-body">✈️ Airport Pickup Available 24/7 — <strong> Book Instantly!</strong></div>
            <button type="button" class="btn-close btn-close-white ms-auto me-2" data-bs-dismiss="toast"></button>
        </div>
    </div>
</div>


<style>
    .toast-container {
        display: flex;
        flex-direction: column-reverse; 
        gap: 10px;
        margin-bottom: 3%;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const toastIds = ["toast1", "toast2", "toast4"];
        let index = 0;

        function showNextToast() {
            if (index >= toastIds.length) return;

            const toastEl = document.getElementById(toastIds[index]);
            const toast = new bootstrap.Toast(toastEl, {
                autohide: false,   
                animation: true
            });

            toast.show();
            index++;

            setTimeout(showNextToast, 700); 
        }

        showNextToast();

        setTimeout(() => {
            toastIds.forEach(id => {
                const el = document.getElementById(id);
                const t = bootstrap.Toast.getOrCreateInstance(el);
                t.hide();
            });
        }, 5000); 
    });
</script>

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
                <a href="mailto:transfers@srilankarentacar.com" class="text-decoration-none"> transfers@srilankarentacar.com</a>
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
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <i class="bi bi-whatsapp"></i>
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p>Hello! 👋How can we assist you today with your transfer or booking?</p>
        <textarea id="wa-chat-input" placeholder="Type your message..."></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94767989878";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information 😊";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
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
    ),
    'MODX\\Revolution\\modSnippet' => 
    array (
      'GoogleReviews' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'GoogleReviews',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '$apiKey = \'AIzaSyBl50Q8W4ZF2_EkOJ1lnRoVxO1IdjIupjM\';
$placeId = \'ChIJb-sUn7Px4joR5tfdECCYM1o\';
$cacheFile = MODX_BASE_PATH . \'assets/cache/google_reviews_cache.json\';
$cacheTtl = 60 * 60 * 6; // 6 hours

// Load from cache if still fresh
if (file_exists($cacheFile) && (time() - filemtime($cacheFile) < $cacheTtl)) {
    $data = json_decode(file_get_contents($cacheFile), true);
} else {
    $url = "https://maps.googleapis.com/maps/api/place/details/json?place_id="
        . urlencode($placeId)
        . "&fields=name,rating,user_ratings_total,reviews,formatted_address,website"
        . "&key=" . urlencode($apiKey);

    $opts = ["http" => ["timeout" => 10]];
    $context = stream_context_create($opts);
    $json = @file_get_contents($url, false, $context);

    if ($json !== false) {
        $data = json_decode($json, true);
        if ($data) {
            file_put_contents($cacheFile, json_encode($data));
        }
    }
}

$output = \'\';
$reviews = $data[\'result\'][\'reviews\'] ?? [];

if (!empty($reviews)) {
    foreach ($reviews as $r) {
        $avatarUrl = $modx->getOption(\'site_url\') . \'assets/components/review_proxy.php?url=\' . urlencode($r[\'profile_photo_url\']);
        $text = htmlspecialchars($r[\'text\'] ?? \'\');
        $name = htmlspecialchars($r[\'author_name\'] ?? \'Anonymous\');
        $rating = intval($r[\'rating\'] ?? 0);
        $time = htmlspecialchars($r[\'relative_time_description\'] ?? \'\');

        // Create star rating icons
        $stars = str_repeat(\'<i class="bi bi-star-fill text-warning"></i>\', $rating);
        $stars .= str_repeat(\'<i class="bi bi-star text-warning"></i>\', 5 - $rating);

        $output .= \'
        <div class="swiper-slide">
          <div class="testimonial-item">
            <p>
              <i class="bi bi-quote quote-icon-left"></i>
              \' . $text . \'
              <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <div class="profile mt-auto">
              <img src="\' . $avatarUrl . \'" class="testimonial-img" alt="\' . $name . \'">
              <h3>\' . $name . \'</h3>
              <h4>\' . $stars . \' &nbsp; <small class="text-muted">\' . $time . \'</small></h4>
            </div>
          </div>
        </div>\';
    }
} else {
    $output = \'<div class="swiper-slide"><p class="text-center">No reviews available yet.</p></div>\';
}

return $output;',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '$apiKey = \'AIzaSyBl50Q8W4ZF2_EkOJ1lnRoVxO1IdjIupjM\';
$placeId = \'ChIJb-sUn7Px4joR5tfdECCYM1o\';
$cacheFile = MODX_BASE_PATH . \'assets/cache/google_reviews_cache.json\';
$cacheTtl = 60 * 60 * 6; // 6 hours

// Load from cache if still fresh
if (file_exists($cacheFile) && (time() - filemtime($cacheFile) < $cacheTtl)) {
    $data = json_decode(file_get_contents($cacheFile), true);
} else {
    $url = "https://maps.googleapis.com/maps/api/place/details/json?place_id="
        . urlencode($placeId)
        . "&fields=name,rating,user_ratings_total,reviews,formatted_address,website"
        . "&key=" . urlencode($apiKey);

    $opts = ["http" => ["timeout" => 10]];
    $context = stream_context_create($opts);
    $json = @file_get_contents($url, false, $context);

    if ($json !== false) {
        $data = json_decode($json, true);
        if ($data) {
            file_put_contents($cacheFile, json_encode($data));
        }
    }
}

$output = \'\';
$reviews = $data[\'result\'][\'reviews\'] ?? [];

if (!empty($reviews)) {
    foreach ($reviews as $r) {
        $avatarUrl = $modx->getOption(\'site_url\') . \'assets/components/review_proxy.php?url=\' . urlencode($r[\'profile_photo_url\']);
        $text = htmlspecialchars($r[\'text\'] ?? \'\');
        $name = htmlspecialchars($r[\'author_name\'] ?? \'Anonymous\');
        $rating = intval($r[\'rating\'] ?? 0);
        $time = htmlspecialchars($r[\'relative_time_description\'] ?? \'\');

        // Create star rating icons
        $stars = str_repeat(\'<i class="bi bi-star-fill text-warning"></i>\', $rating);
        $stars .= str_repeat(\'<i class="bi bi-star text-warning"></i>\', 5 - $rating);

        $output .= \'
        <div class="swiper-slide">
          <div class="testimonial-item">
            <p>
              <i class="bi bi-quote quote-icon-left"></i>
              \' . $text . \'
              <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <div class="profile mt-auto">
              <img src="\' . $avatarUrl . \'" class="testimonial-img" alt="\' . $name . \'">
              <h3>\' . $name . \'</h3>
              <h4>\' . $stars . \' &nbsp; <small class="text-muted">\' . $time . \'</small></h4>
            </div>
          </div>
        </div>\';
    }
} else {
    $output = \'<div class="swiper-slide"><p class="text-center">No reviews available yet.</p></div>\';
}

return $output;',
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