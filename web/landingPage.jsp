<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>MedEasy - Landing Page</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Day - v4.10.0
        * Template URL: https://bootstrapmade.com/day-multipurpose-html-template-for-free/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Top Bar ======= -->
        <section id="topbar" class="d-flex align-items-center" style="background-color: white;">
            <div class="container d-flex justify-content-center justify-content-md-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope-fill"></i><a href="mailto:contact@example.com"style="color: black;">support@medeasy.com</a>
                    <i class="bi bi-phone-fill phone-icon"></i> <span style="color: black;">+91 900-7366-986</span>
                </div>
                <div class="social-links d-none d-md-block">
                    <a href="#" class="twitter"><i class="bi bi-twitter" style="color: black;"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook" style="color: black;"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram" style="color: black;"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin" style="color: black;"></i></i></a>
                </div>
            </div>
        </section>

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex align-items-center" style="background-color: #1E90FF;">
            <div class="container d-flex align-items-center justify-content-between">

                <h1 class="logo"><a href="index.html">MedEasy</a></h1>
                <!--       Uncomment below if you prefer to use an image logo 
                       <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar" >
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                        <li><a class="nav-link scrollto" href="#about">About</a></li>
                        <li><a class="nav-link scrollto" href="#services">Features</a></li>
<!--                        <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
                        <li><a class="nav-link scrollto" href="#pricing">Pricing</a></li>-->
                        <li><a class="nav-link scrollto" href="#team">Reviews</a></li>
<!--                        <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="#">Drop Down 1</a></li>
                                <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a href="#">Deep Drop Down 1</a></li>
                                        <li><a href="#">Deep Drop Down 2</a></li>
                                        <li><a href="#">Deep Drop Down 3</a></li>
                                        <li><a href="#">Deep Drop Down 4</a></li>
                                        <li><a href="#">Deep Drop Down 5</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Drop Down 2</a></li>
                                <li><a href="#">Drop Down 3</a></li>
                                <li><a href="#">Drop Down 4</a></li>
                            </ul>
                        </li>-->
                        <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                    </ul>
                    <button class="btn btn-primary my-2 my-sm-0" data-toggle="modal" data-target="#exampleModalCenter">LOGIN</button>
                    
                    <!-- Modal start -->
                    
                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">

                                <div class="modal-body" style="background-color: #e0feff">

                                    <button type="button" class="close mx-2" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    <form class="rounded bg-white shadow p-5" action="Login" method="post">

                                        <h3 class="text-dark fw-bolder fs-4 mb-2 text-center">Sign In to MedEasy</h3>
                                        
                                        <div class="form-floating mb-3">
                                            <input type="email" class="form-control" id="emailId" name="emailId" placeholder="name@example.com">
                                            <label for="emailId">Email address</label>
                                        </div>
                                        <div class="form-floating">
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                                            <label for="password">Password</label>
                                        </div>
<!--                                        <div class="mt-2 text-end">
                                            <a href="#" class="text-primary fw-bold text-decoration-none">Forget Password?</a>
                                        </div>-->
                                        <button type="submit" class="btn btn-primary submit_btn w-100 my-4">LOG IN</button>
                                        <div class="fw-normal text-muted mb-4 text-center">
                                            New Here? <a href="signup.jsp" class="text-primary fw-bold text-decoration-none">Create an Account</a>
                                        </div>

<!--                                        <div class="text-center text-muted text-uppercase mb-3">OR</div>

                                        <a href="#" class="btn btn-light login_with w-100 mb-3">
                                            <img src="images/google-icon.png" alt="G" class="img-fluid me-3">Continue with Google
                                        </a>-->

                                    </form>

                                </div>

                            </div>
                        </div>
                    </div>
                    
                    <!-- Modal end -->
                    
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container position-relative" data-aos="fade-up" data-aos-delay="500">
                <h1>Welcome to MedEasy</h1>
                <h2>We are team of talented workers to get your <br>medicines on time</h2>
                <a href="signup.jsp" class="btn-get-started scrollto">Join us</a>
            </div>
        </section><!-- End Hero -->

        <main id="main">


            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left">
                            <img src="assets/img/worker.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right">
                            <h3>Why choose us?</h3>
                            <p class="fst-italic">
                                We have one of the best teams to get your medicine on time. Our members excel in  
                            </p>
                            <ul>
                                <li><i class="bi bi-check-circle"></i> Communication - we will ask and try to know your need.</li>
                                <li><i class="bi bi-check-circle"></i> Teamwork - we will work together to meet your needs quickly.</li>
                                <li><i class="bi bi-check-circle"></i> Knowledge - Our team consists of great minds for your help.</li>
                                <li><i class="bi bi-check-circle"></i> Experience - We have been serving for over 32 years.</li>
                            </ul>
                            <p>
                                MedEasy  is not only limited to online pharmacy but offers an 
                                extended product range with a huge selection of medical devices, 
                                personal care products, baby care products, health food and drinks, 
                                sexual wellness products, ayurvedic, herbal and natural products.
                            </p>
                        </div>
                    </div>

                </div>
            </section><!-- End About Section -->

            <!-- ======= Why Us Section ======= -->
            <section id="why-us" class="why-us">
                <div class="container">

                    <div class="row">

                        <div class="col-lg-4" data-aos="fade-up">
                            <div class="box">
                                <span>01</span>
                                <h4>Genuine medicine</h4>
                                <p>We have a wide availability of completely genuine medicine in our stores</p>
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="150">
                            <div class="box">
                                <span>02</span>
                                <h4>Large selection of products</h4>
                                <p>You name it and we have it. our store has wide availability of medical items</p>
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
                            <div class="box">
                                <span>03</span>
                                <h4> 24/7 availability</h4>
                                <p>Our team works round the clock to meet your needs. Your satisfaction is our priority</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Why Us Section -->

            <!-- ======= Clients Section ======= -->
            <section id="clients" class="clients">
                <div class="container" data-aos="zoom-in">

                    <div class="row d-flex align-items-center">

                        <div class="col-lg-2 col-md-4 col-6">
                            <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6">
                            <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6">
                            <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6">
                            <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6">
                            <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6">
                            <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">
                        </div>

                    </div>

                </div>
            </section><!-- End Clients Section -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container">

                    <div class="section-title">
                        <span>Features</span>
                        <h2>features</h2>
                        <p>These are some of the achievements and qualities we have earned and provide</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                            <div class="icon-box">
                                <div class="icon"><i class='bx bxs-discount bx-tada'></i></div>
                                <h4><a href="">Upto 30% discount</a></h4>
                                <p>We always have discounts on all of our products which makes it affordable for all customers</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="150">
                            <div class="icon-box">
                                <div class="icon"><i class='bx bx-party'></i></div>
                                <h4><a href="">9900+ Unique items sold</a></h4>
                                <p>We have serviced a lot of customers and were able to sell over 9900 unique items in last 3 months</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
                            <div class="icon-box">
                                <div class="icon"><i class='bx bx-location-plus'></i></div>
                                <h4><a href="">19500+ pincodes serviced</a></h4>
                                <p>Our delivery team has worked round the clock to achieve this in past 3 months.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="450">
                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-world"></i></div>
                                <h4><a href="">Over 32 years service</a></h4>
                                <p>We have just celebrated giving over 32 years of continuous service to our valuable customers</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="600">
                            <div class="icon-box">
                                <div class="icon"><i class='bx bx-plus-medical'></i></div>
                                <h4><a href="">Doctor availability</a></h4>
                                <p>We have experienced doctors in the store for any medical check-up or suggestion</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="750">
                            <div class="icon-box">
                                <div class="icon"><i class='bx bx-injection' ></i></div>
                                <h4><a href="">Free BP & Sugar test</a></h4>
                                <p>We provide free BP and Sugar testing facilities to all of our customers in the store</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Services Section -->

            <!--     ======= Cta Section ======= 
                <section id="cta" class="cta">
                  <div class="container" data-aos="zoom-in">
            
                    <div class="text-center">
                      <h3>Call To Action</h3>
                      <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      <a class="cta-btn" href="#">Call To Action</a>
                    </div>
            
                  </div>
                </section> End Cta Section 
            
                 ======= Portfolio Section ======= 
                <section id="portfolio" class="portfolio">
                  <div class="container">
            
                    <div class="section-title">
                      <span>Portfolio</span>
                      <h2>Portfolio</h2>
                      <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit alias</p>
                    </div>
            
                    <div class="row" data-aos="fade-up">
                      <div class="col-lg-12 d-flex justify-content-center">
                        <ul id="portfolio-flters">
                          <li data-filter="*" class="filter-active">All</li>
                          <li data-filter=".filter-app">App</li>
                          <li data-filter=".filter-card">Card</li>
                          <li data-filter=".filter-web">Web</li>
                        </ul>
                      </div>
                    </div>
            
                    <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="150">
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                        <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>App 1</h4>
                          <p>App</p>
                          <a href="assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>Web 3</h4>
                          <p>Web</p>
                          <a href="assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                        <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>App 2</h4>
                          <p>App</p>
                          <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                        <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>Card 2</h4>
                          <p>Card</p>
                          <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>Web 2</h4>
                          <p>Web</p>
                          <a href="assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                        <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>App 3</h4>
                          <p>App</p>
                          <a href="assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                        <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>Card 1</h4>
                          <p>Card</p>
                          <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                        <img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>Card 3</h4>
                          <p>Card</p>
                          <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                        <img src="assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                          <h4>Web 3</h4>
                          <p>Web</p>
                          <a href="assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
                          <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                      </div>
            
                    </div>
            
                  </div>
                </section> End Portfolio Section 
            
                 ======= Pricing Section ======= 
                <section id="pricing" class="pricing">
                  <div class="container">
            
                    <div class="section-title">
                      <span>Pricing</span>
                      <h2>Pricing</h2>
                      <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit alias</p>
                    </div>
            
                    <div class="row">
            
                      <div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="150">
                        <div class="box">
                          <h3>Free</h3>
                          <h4><sup>$</sup>0<span> / month</span></h4>
                          <ul>
                            <li>Aida dere</li>
                            <li>Nec feugiat nisl</li>
                            <li>Nulla at volutpat dola</li>
                            <li class="na">Pharetra massa</li>
                            <li class="na">Massa ultricies mi</li>
                          </ul>
                          <div class="btn-wrap">
                            <a href="#" class="btn-buy">Buy Now</a>
                          </div>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 mt-4 mt-md-0" data-aos="zoom-in">
                        <div class="box featured">
                          <h3>Business</h3>
                          <h4><sup>$</sup>19<span> / month</span></h4>
                          <ul>
                            <li>Aida dere</li>
                            <li>Nec feugiat nisl</li>
                            <li>Nulla at volutpat dola</li>
                            <li>Pharetra massa</li>
                            <li class="na">Massa ultricies mi</li>
                          </ul>
                          <div class="btn-wrap">
                            <a href="#" class="btn-buy">Buy Now</a>
                          </div>
                        </div>
                      </div>
            
                      <div class="col-lg-4 col-md-6 mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="150">
                        <div class="box">
                          <h3>Developer</h3>
                          <h4><sup>$</sup>29<span> / month</span></h4>
                          <ul>
                            <li>Aida dere</li>
                            <li>Nec feugiat nisl</li>
                            <li>Nulla at volutpat dola</li>
                            <li>Pharetra massa</li>
                            <li>Massa ultricies mi</li>
                          </ul>
                          <div class="btn-wrap">
                            <a href="#" class="btn-buy">Buy Now</a>
                          </div>
                        </div>
                      </div>
            
                    </div>
            
                  </div>
                </section> End Pricing Section -->

            <!-- ======= Team Section ======= -->
            <section id="team" class="team">
                <div class="container">

                    <div class="section-title">
                        <span>Reviews</span>
                        <h2>Reviews</h2>
                        <p>Here is what our lovely customers say about us</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in">
                            <div class="member">
                                <img src="assets/img/team/team-1.jpg" alt="">
                                <h4>Dr. Punit Rao</h4>
                                <span>Chief Doctor - Amri Hospitals</span>
                                <p>
                                    "It was always difficult to suggest a pharmacy shop to my patients but MedEasy made it easy! My patients always visit here."
                                </p>
                                <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in">
                            <div class="member">
                                <img src="assets/img/team/team-2.jpg" alt="">
                                <h4>Sarah Jhinson</h4>
                                <span>House wife</span>
                                <p>
                                    "During and after my pregnancy, MedEasy has helped me get all the essential supplies on time. They have always been there at the time of need."
                                </p>
                                <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in">
                            <div class="member">
                                <img src="assets/img/team/team-3.jpg" alt="">
                                <h4>Vishal Kumar</h4>
                                <span>CTO - PharmaCo.</span>
                                <p>
                                    "MedEasy is my go to pharmacy shop. They always have every medicine in stock. This is the best medical store!"
                                </p>
                                <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Team Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">

                    <div class="section-title">
                        <span>Contact</span>
                        <h2>Contact</h2>
                        <p>Reach your nearest MedEasy store soon</p>
                    </div>

                    <div class="row" data-aos="fade-up">
                        <div class="col-lg-6">
                            <div class="info-box mb-4">
                                <i class="bx bx-map"></i>
                                <h3>Our Address</h3>
                                <p>9A Lalit Mitra Lane, Kolkata-700004</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="info-box  mb-4">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>contact@MedEasy.com</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="info-box  mb-4">
                                <i class="bx bx-phone-call"></i>
                                <h3>Call Us</h3>
                                <p>+91 900 7366 986</p>
                            </div>
                        </div>

                    </div>

                    <div class="row" data-aos="fade-up">

                        <div class="col-lg-6 ">
                            <iframe class="mb-4 mb-lg-0" src="https://maps.google.com/maps?q=exavalu&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
                        </div>

                        <div class="col-lg-6">
                            <form action="https://formspree.io/f/xvonaenq" method="POST" class="php-email-form">
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                                    </div>
                                    <div class="col-md-6 form-group mt-3 mt-md-0">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                                    </div>
                                </div>
                                <div class="form-group mt-3">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                                </div>
                                <div class="form-group mt-3">
                                    <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                                </div>
                                <div class="my-3">
                                    <div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="sent-message">Your message has been sent. Thank you!</div>
                                </div>
                                <div class="text-center"><button type="submit">Send Message</button></div>
                            </form>
                        </div>

                    </div>

                </div>
            </section><!-- End Contact Section -->

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-4 col-md-6">
                            <div class="footer-info">
                                <h3>Day</h3>
                                <p>
                                    A108 Adam Street <br>
                                    NY 535022, USA<br><br>
                                    <strong>Phone:</strong> +1 5589 55488 55<br>
                                    <strong>Email:</strong> info@example.com<br>
                                </p>
                                <div class="social-links mt-3">
                                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-4 col-md-6 footer-newsletter">
                            <h4>Our Newsletter</h4>
                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Subscribe">
                            </form>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>Day</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/day-multipurpose-html-template-for-free/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

        <!-- JS for modal -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="js/holder.min.js"></script>

    </body>

</html>