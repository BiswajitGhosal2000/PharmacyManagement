<!--pratik-->
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

        <title>Pharmacy Management</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link  href="css/style.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/carousel.css" rel="stylesheet">
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top"style="background-color: #4863A0;">
                <a class="navbar-brand" href="#">CompanyA</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Login <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="VerifyEmployee.jsp">Verify Employee <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <button class="btn btn-primary my-2 my-sm-0" data-toggle="modal" data-target="#exampleModalCenter">LOGIN</button>
                </div>
            </nav>
        </header>

        <main role="main">

            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <div class="modal-body" style="background-color: #e0feff">

                            <button type="button" class="close mx-2" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <form class="rounded bg-white shadow p-5" action="Login" method="post">

                                <h3 class="text-dark fw-bolder fs-4 mb-2 text-center">Sign In to MedEasy</h3>
                                <div class="fw-normal text-muted mb-4 text-center">
                                    New Here? <a href="signup.jsp" class="text-primary fw-bold text-decoration-none">Create an Account</a>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="emailId" name="emailId" placeholder="name@example.com">
                                    <label for="emailId">Email address</label>
                                </div>
                                <div class="form-floating">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                                    <label for="password">Password</label>
                                </div>
                                <div class="mt-2 text-end">
                                    <a href="#" class="text-primary fw-bold text-decoration-none">Forget Password?</a>
                                </div>
                                <button type="submit" class="btn btn-primary submit_btn w-100 my-4">LOG IN</button>

                                <div class="text-center text-muted text-uppercase mb-3">OR</div>

                                <a href="#" class="btn btn-light login_with w-100 mb-3">
                                    <img src="images/google-icon.png" alt="G" class="img-fluid me-3">Continue with Google
                                </a>

                            </form>

                        </div>

                    </div>
                </div>
            </div>

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
<<<<<<< HEAD
                        <img class="first-slide" src="images/firstSlide.avif" alt="First slide" height="512px"width="100%">
=======
                        <img class="first-slide" src="images/firstSlide.png" alt="First slide" height="512px"width="100%">
>>>>>>> origin/master
                        <div class="container">
                            <div class="carousel-caption text-left">
                                <h1>Pharmacy Management</h1>
                                <p>One place to manage your whole pharmacy. Our employees get best treatment. 
                                    <br>We provide higher salaries, medical insurances and other benefits.
                                    <br>Join us and secure your future.</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="https://img.freepik.com/free-photo/white-blue-candy-capsules-forming-frame-cyan-background_23-2147877563.jpg?w=900&t=st=1676966561~exp=1676967161~hmac=137add49b2fffe92f3d3b3f7a1a2bd15ff1422a0c4a263e2790226602d2f2c9d" width="100%" alt="Second slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Upto 30% discount</h1>
                                <p>CompanyA has every medicine available. We provide our services round the clock. 
                                    <br>There are doctors available every time to consult in the store.
                                    <br>Do visit us for best customer satisfaction.
                                </p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="third-slide" src="https://img.freepik.com/free-photo/minimalistic-science-banner-with-pills_23-2149431123.jpg?w=1380&t=st=1676966427~exp=1676967027~hmac=51a5fcf24f398d7ad34798086118f612d9302ca611a863b1ec7a86d51021dc59" width="100%"alt="Third slide">
                        <div class="container">
                            <div class="carousel-caption text-right">
                                <h1>Contact us</h1>
                                <p>Address - 9A lalit Mitra Lane, near CESC Office
                                    <br>Email address - CompanyA@gmail.com
                                    <br>Phone - 033-2555-7551 / 9432240698
                                </p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


            <!-- Marketing messaging and featurettes
            ================================================== -->
            <!-- Wrap the rest of the page in another container to center all the content. -->

            <div class="container marketing">

                <!-- Three columns of text below the carousel -->
                <div class="row">
                    <div class="col-lg-4">
                        <img class="rounded-circle" src="https://www.felixhospital.com/sites/default/files/2022-11/dr-dk-gupta.jpg" alt="Generic placeholder image" width="140" height="140">
                        <h2>Dr. Punit Rao</h2>
                        <p>It was always difficult to suggest a pharmacy shop to my patients but companyA made it easy! My patients always visit here.</p>
                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img class="rounded-circle" src="https://www.pngall.com/wp-content/uploads/2018/04/Businessman-Transparent.png" alt="Generic placeholder image" width="140" height="140">
                        <h2>Mr. Alex Brown</h2>
                        <p>CompanyA is highly reputed pharmacy shop. It always provides good discounts and best in class customer satisfaction.</p>
                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img class="rounded-circle" src="https://media.licdn.com/dms/image/C5603AQF2xNAfFeVxjA/profile-displayphoto-shrink_800_800/0/1658065122012?e=2147483647&v=beta&t=C2p_XWnpmNsI1tISAWt5fNsSc8IpFWffTWz8eerf36g" alt="Generic placeholder image" width="140" height="140">
                        <h2>Mr. Vishal Kumar</h2>
                        <p>CompanyA is my go to pharmacy shop. They always have every medicine in stock. This is the best medical store! </p>
                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->


                <!-- START THE FEATURETTES -->

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Reasons to buy medicine <span class="text-muted">from CompanyA.</span></h2>
                        <p class="lead">For over 32 years, CompanyA has been providing you with genuine medicines round-the-clock, through 24-hour service.
                            <br>We always have every medicine in stock. No matter what medicine you want, CompanyA has it in stock!
                            <br>Our employees will treat you with utmost attention and care ensuring best buying experience.
                        </p>
                    </div>
                    <div class="col-md-5">
                        <img class="featurette-image img-fluid mx-auto" src="https://www.signalprime.com/wp-content/uploads/2019/05/pharmacy-glass-display-cabinet-showcase-medical-store-500x500.jpg"data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7 order-md-2">
                        <h2 class="featurette-heading">Highest discounts <span class="text-muted">in the town.</span></h2>
                        <p class="lead">We always provide our customers with the highest discounts possible. 
                            Currently almost all of our products come with upto 30% discount!
                            The more you shop the better discounts you will get!
                        </p>
                    </div>
                    <div class="col-md-5 order-md-1">
                        <img class="featurette-image img-fluid mx-auto" src="https://assets-global.website-files.com/5ef38c31b69ea712667d2e24/6078474fcacc7fecc48f61dc_Asset%2015.jpg"data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Best Pharmacologist Available To  <span class="text-muted">Check Medicine Interactions.</span></h2>
                        <p class="lead">Sometimes, the medicines recommended by your doctor may react with your existing medications, food, beverage, or supplements. This is known as medicine interaction and may prevent your medicine to perform as expected. Hence, on CompanyA, we offer you an option to consult with a pharmacologist, an expert in medicine interactions, before you make any purchase.</p>
                    </div>
                    <div class="col-md-5">
                        <img class="featurette-image img-fluid mt-5 mx-auto" src="https://www.kanishkhospital.com/wp-content/uploads/2022/02/Dr.-Mukesh-Gupta-SIr-500x500.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                    </div>
                </div>

                <hr class="featurette-divider">

                <!-- /END THE FEATURETTES -->

            </div><!-- /.container -->


            <!-- FOOTER -->
            <footer class="container">
                <p class="float-right"><a href="#">Back to top</a></p>
                <p>&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
            </footer>
        </main>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="js/holder.min.js"></script>
    </body>
</html>