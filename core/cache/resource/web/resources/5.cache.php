<?php  return array (
  'resourceClass' => 'MODX\\Revolution\\modDocument',
  'resource' => 
  array (
    'id' => 5,
    'type' => 'document',
    'pagetitle' => 'Contact',
    'longtitle' => '',
    'description' => '',
    'alias' => 'contact',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '[[!contactForm]]

<body class="contact-page">

    <main class="main">
        <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-4.png);">
            <div class="container position-relative">
                <h1>Contact</h1>
                <p>Book your ride with SR Transfers — safe, reliable, and hassle-free transport across Sri Lanka. Reach out today!</p>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="[[~1]]">Home</a></li>
                        <li class="current">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>

        <!-- Contact Section -->
        <section id="contact" class="contact section">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row gy-4 mb-5">
                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="contact-info-box">
                        <div class="icon-box">
                        <i class="bi bi-geo-alt"></i>
                        </div>
                        <div class="info-content">
                        <h4>Our Office</h4>
                        <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="text-decoration: none; color: inherit;">
                            SR Transfers (Pvt) Ltd<br>
                            371-5,<br>
                            Negombo - Colombo Main Rd,<br>
                            Seeduwa Sri Lanka
                        </a>
                        </div>
                    </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="contact-info-box">
                            <div class="icon-box">
                            <i class="bi bi-envelope"></i>
                            </div>
                            <div class="info-content">
                            <h4>Email Us</h4>
                            <a href="mailto:transfers@srilankarentacar.com">transfers@srilankarentacar.com</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="contact-info-box">
                            <div class="icon-box">
                            <i class="bi bi-phone"></i>
                            </div>
                            <div class="info-content">
                            <h4>Contact Us</h4>
                            <a href="tel:+94767989878">+94 76 798 9878</a><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="map-section" data-aos="fade-up" data-aos-delay="200">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.9719503939377!2d79.87315007581863!3d7.129241115826212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2f1b39f14eb6f%3A0x5a33982010ddd7e6!2sSR%20Transfers%20Sri%20Lanka!5e0!3m2!1sen!2slk!4v1762930732266!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

            <div class="container form-container-overlap">
                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
                    <div class="col-lg-10">
                        <div class="contact-form-wrapper">
                            <h2 class="text-center mb-4">Get in Touch</h2>
                            <div id="successMessage" class="alert alert-success text-center" style="display: none;">
                                Your message has been sent successfully!
                            </div>
                            <form id="contactForm" action="[[~5]]" method="POST">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-person"></i>
                                                <input type="text" class="form-control" name="name" placeholder="First Name" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-envelope"></i>
                                                <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-phone"></i>
                                                <input type="text" class="form-control" name="phone" placeholder="Contact Number" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-text-left"></i>
                                                <input type="text" class="form-control" name="subject" placeholder="Subject" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-chat-dots message-icon"></i>
                                                <textarea class="form-control" name="message" placeholder="Write Message..." style="height: 180px" required></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- reCAPTCHA v3 hidden field -->
                                    <input type="hidden" name="recaptchaResponse" id="recaptchaResponse">

                                    <!-- to match your PHP: isset($_POST[\'submit\']) -->
                                    <input type="hidden" name="submit" value="1">

                                    <div class="col-12 text-center">
                                        <button type="submit" class="btn btn-primary btn-submit">SEND MESSAGE</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>
        const form = document.getElementById(\'contactForm\');
        const successMessage = document.getElementById(\'successMessage\');
        const submitBtn = form.querySelector(\'.btn-submit\');

        form.addEventListener(\'submit\', async function (e) {
            e.preventDefault();

            submitBtn.disabled = true;
            submitBtn.innerHTML = "Sending...";

            const data = new FormData(form);

            try {
                const resp = await fetch(form.action, {
                    method: "POST",
                    body: data
                });

                const result = await resp.text();

                if (resp.ok && result.includes("success")) {
                    successMessage.style.display = \'block\';
                    form.reset();

                    successMessage.scrollIntoView({ behavior: \'smooth\' });

                    setTimeout(() => {
                        successMessage.style.display = \'none\';
                    }, 5000);
                } else {
                    alert("Error sending message. Please try again.");
                }
            } catch (err) {
                alert("Network error — please check your connection and try again.");
                console.error(err);
            } finally {
                // Re-enable button after request completes
                submitBtn.disabled = false;
                submitBtn.innerHTML = "SEND MESSAGE";
            }
        });
    </script>

    <script src="https://www.google.com/recaptcha/api.js?render=6Lfi4e8qAAAAAOji3ztqb74m99mImbQEsS-mVNWF"></script>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute(\'6Lfi4e8qAAAAAOji3ztqb74m99mImbQEsS-mVNWF\', { action: \'contact\' })
                .then(function (token) {
                    document.getElementById(\'recaptchaResponse\').value = token;
                });
        });
    </script>

</body>',
    'richtext' => 1,
    'template' => 2,
    'menuindex' => 4,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1762929628,
    'editedby' => 1,
    'editedon' => 1763618110,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1762929600,
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


[[!contactForm]]

<body class="contact-page">

    <main class="main">
        <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-4.png);">
            <div class="container position-relative">
                <h1>Contact</h1>
                <p>Book your ride with SR Transfers — safe, reliable, and hassle-free transport across Sri Lanka. Reach out today!</p>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="index.php?id=1">Home</a></li>
                        <li class="current">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>

        <!-- Contact Section -->
        <section id="contact" class="contact section">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row gy-4 mb-5">
                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="contact-info-box">
                        <div class="icon-box">
                        <i class="bi bi-geo-alt"></i>
                        </div>
                        <div class="info-content">
                        <h4>Our Office</h4>
                        <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="text-decoration: none; color: inherit;">
                            SR Transfers (Pvt) Ltd<br>
                            371-5,<br>
                            Negombo - Colombo Main Rd,<br>
                            Seeduwa Sri Lanka
                        </a>
                        </div>
                    </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="contact-info-box">
                            <div class="icon-box">
                            <i class="bi bi-envelope"></i>
                            </div>
                            <div class="info-content">
                            <h4>Email Us</h4>
                            <a href="mailto:transfers@srilankarentacar.com">transfers@srilankarentacar.com</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="contact-info-box">
                            <div class="icon-box">
                            <i class="bi bi-phone"></i>
                            </div>
                            <div class="info-content">
                            <h4>Contact Us</h4>
                            <a href="tel:+94767989878">+94 76 798 9878</a><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="map-section" data-aos="fade-up" data-aos-delay="200">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.9719503939377!2d79.87315007581863!3d7.129241115826212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2f1b39f14eb6f%3A0x5a33982010ddd7e6!2sSR%20Transfers%20Sri%20Lanka!5e0!3m2!1sen!2slk!4v1762930732266!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

            <div class="container form-container-overlap">
                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
                    <div class="col-lg-10">
                        <div class="contact-form-wrapper">
                            <h2 class="text-center mb-4">Get in Touch</h2>
                            <div id="successMessage" class="alert alert-success text-center" style="display: none;">
                                Your message has been sent successfully!
                            </div>
                            <form id="contactForm" action="index.php?id=5" method="POST">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-person"></i>
                                                <input type="text" class="form-control" name="name" placeholder="First Name" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-envelope"></i>
                                                <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-phone"></i>
                                                <input type="text" class="form-control" name="phone" placeholder="Contact Number" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-text-left"></i>
                                                <input type="text" class="form-control" name="subject" placeholder="Subject" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-chat-dots message-icon"></i>
                                                <textarea class="form-control" name="message" placeholder="Write Message..." style="height: 180px" required></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- reCAPTCHA v3 hidden field -->
                                    <input type="hidden" name="recaptchaResponse" id="recaptchaResponse">

                                    <!-- to match your PHP: isset($_POST[\'submit\']) -->
                                    <input type="hidden" name="submit" value="1">

                                    <div class="col-12 text-center">
                                        <button type="submit" class="btn btn-primary btn-submit">SEND MESSAGE</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>
        const form = document.getElementById(\'contactForm\');
        const successMessage = document.getElementById(\'successMessage\');
        const submitBtn = form.querySelector(\'.btn-submit\');

        form.addEventListener(\'submit\', async function (e) {
            e.preventDefault();

            submitBtn.disabled = true;
            submitBtn.innerHTML = "Sending...";

            const data = new FormData(form);

            try {
                const resp = await fetch(form.action, {
                    method: "POST",
                    body: data
                });

                const result = await resp.text();

                if (resp.ok && result.includes("success")) {
                    successMessage.style.display = \'block\';
                    form.reset();

                    successMessage.scrollIntoView({ behavior: \'smooth\' });

                    setTimeout(() => {
                        successMessage.style.display = \'none\';
                    }, 5000);
                } else {
                    alert("Error sending message. Please try again.");
                }
            } catch (err) {
                alert("Network error — please check your connection and try again.");
                console.error(err);
            } finally {
                // Re-enable button after request completes
                submitBtn.disabled = false;
                submitBtn.innerHTML = "SEND MESSAGE";
            }
        });
    </script>

    <script src="https://www.google.com/recaptcha/api.js?render=6Lfi4e8qAAAAAOji3ztqb74m99mImbQEsS-mVNWF"></script>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute(\'6Lfi4e8qAAAAAOji3ztqb74m99mImbQEsS-mVNWF\', { action: \'contact\' })
                .then(function (token) {
                    document.getElementById(\'recaptchaResponse\').value = token;
                });
        });
    </script>

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
      'contactForm' => 
      array (
        'fields' => 
        array (
          'id' => 9,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'contactForm',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => 'include (\'config.php\');
include (\'classes/EmailSender.php\');

$errors = [];
$name = $email = $phone = $message = "";
$recaptcha_response = "";

if ($_SERVER[\'REQUEST_METHOD\'] === \'POST\' && isset($_POST[\'submit\'])) {

    $name = test_input($_POST[\'name\']);
    $email = test_input($_POST[\'email\']);
    $phone = test_input($_POST[\'phone\']);
    $message = test_input($_POST[\'message\']);
    $recaptcha_response = filter_input(INPUT_POST, \'recaptchaResponse\');

    if (!verifyRecaptcha($recaptcha_response)) {
        echo "error";
        exit;
    }

    if (empty($name) || strlen($name) < 3) $errors[\'name\'] = "Invalid name";
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) $errors[\'email\'] = "Invalid email";
    if (empty($phone)) $errors[\'phone\'] = "Invalid phone";
    if (empty($message)) $errors[\'message\'] = "Message is required";

    if (!empty($errors)) {
        echo "error";
        exit;
    }

    $emailSender = new EmailSender();

    $emailTo = \'navodyadivyanjali2@gmail.com\';
    $emailSubject = \'Contact Form Message\';
    $emailContent = "
        <table>
            <tr><td><b>Name</b></td><td> : $name</td></tr>
            <tr><td><b>Email</b></td><td> : $email</td></tr>
            <tr><td><b>Contact Number</b></td><td> : $phone</td></tr>
            <tr><td><b>Message</b></td><td> : $message</td></tr>
        </table>";

    $result = $emailSender->sendEmail($emailTo, $emailSubject, $emailContent);

    if ($result === true) {
        echo "success";
        exit;
    } else {
        echo "error";
        exit;
    }
}',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => 'include (\'config.php\');
include (\'classes/EmailSender.php\');

$errors = [];
$name = $email = $phone = $message = "";
$recaptcha_response = "";

if ($_SERVER[\'REQUEST_METHOD\'] === \'POST\' && isset($_POST[\'submit\'])) {

    $name = test_input($_POST[\'name\']);
    $email = test_input($_POST[\'email\']);
    $phone = test_input($_POST[\'phone\']);
    $message = test_input($_POST[\'message\']);
    $recaptcha_response = filter_input(INPUT_POST, \'recaptchaResponse\');

    if (!verifyRecaptcha($recaptcha_response)) {
        echo "error";
        exit;
    }

    if (empty($name) || strlen($name) < 3) $errors[\'name\'] = "Invalid name";
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) $errors[\'email\'] = "Invalid email";
    if (empty($phone)) $errors[\'phone\'] = "Invalid phone";
    if (empty($message)) $errors[\'message\'] = "Message is required";

    if (!empty($errors)) {
        echo "error";
        exit;
    }

    $emailSender = new EmailSender();

    $emailTo = \'navodyadivyanjali2@gmail.com\';
    $emailSubject = \'Contact Form Message\';
    $emailContent = "
        <table>
            <tr><td><b>Name</b></td><td> : $name</td></tr>
            <tr><td><b>Email</b></td><td> : $email</td></tr>
            <tr><td><b>Contact Number</b></td><td> : $phone</td></tr>
            <tr><td><b>Message</b></td><td> : $message</td></tr>
        </table>";

    $result = $emailSender->sendEmail($emailTo, $emailSubject, $emailContent);

    if ($result === true) {
        echo "success";
        exit;
    } else {
        echo "error";
        exit;
    }
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