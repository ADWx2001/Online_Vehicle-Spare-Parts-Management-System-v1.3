<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>GearUp</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon" />
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Vendor CSS Linkks -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.min.css" rel="stylesheet">

    <!-- Vendor Script Linkks -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,300;1,400;1,500&display=swap"
      rel="stylesheet" />

    <!-- Main CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex align-items-center justify-content-between">
        <div class="logo">
          <h1 id="logo">
            <a href="index.html"><span style="color: black; font-family: 'Roboto', sans-serif">Gear</span><span
                style="color: #3498db">Up</span></a>
          </h1>
          <p>Revving your vehicle solutions</p>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        </div>

        <nav id="navbar" class="navbar">
          <ul>
            <li><a class="nav-link scrollto" href="index.jsp">Home</a></li>
            <li>
              <a class="nav-link scrollto" href="products.jsp">Products</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="#about">About</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="#services">Services</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="#contact">Contact</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="register.jsp">Sign up</a>
            </li>
            <li><a class="" href="sellerLogin.jsp">Sellers</a></li>
            <li><a class="getstarted scrollto" href="register.jsp">Get Started</a></li>
            
          </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <main id="main">

      <section class="inner-page">
        <div class="container mt-5" >
          <div class="row mt-4">

            <div class="col-3">
              <div class="container-md" style="margin-top: 50%;margin-left:40%;" >
                <h1 class="fw-bold"><span style="color: black; font-family: 'Roboto', sans-serif">Gear</span><span style="color: #3498db">Up</span></h1>
                <p class="fw-medium fs-3">Your Ultimate Solution for Streamlined Vehicle Spare Parts Management. </p>
                <a href="products.jsp "><button class="btn-shop">Shop Now!</button></a>
              </div>
            </div>

            <div class="col-9">
              <div class="container-md" style="margin-top: 10%;margin-left:30%;" >
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="img/img-1.png" class="d-block w-75 h-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="img/img-2.png" class="d-block w-75 h-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="img/img-3.png" class="d-block w-75 h-100" alt="...">
                    </div>
                  </div>
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>


      <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container mt-5">

        <div class="section-title" data-aos="fade-up">
          <h2 style="font-family: 'Roboto', sans-serif;">Services</h2>
         
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title" style="font-family: 'Roboto', sans-serif;"><a>Returns and Warranty Management</a></h4>
              <p class="description">Handling returns and warranty claims for defective or unsatisfactory spare parts.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">Consulting Services</a></h4>
              <p class="description">Providing expert advice on spare parts optimization, cost reduction, and supply chain improvements</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">Order Fulfillment</a></h4>
              <p class="description">Processing and managing orders for spare parts, from order placement to delivery and invoicing.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">Technical Support</a></h4>
              <p class="description">Providing technical expertise and support to assist in selecting and using the right spare parts</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    
      <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" >

        <div class="section-title" data-aos="fade-up">
          <h2 style="font-family: 'Roboto', sans-serif;">About Us</h2>
        </div>

        <div class="row content">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
            <p>
              "At Gear Up, we are driven by a passion for innovation in the automotive industry. Our journey began with a simple idea: to create a cutting-edge solution that empowers businesses in managing vehicle spare parts efficiently.With years of dedication and a team of automotive enthusiasts, we've crafted Gear Up into a leading platform. 
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> <b>Mission-Driven:</b> Gear Up is on a mission to simplify vehicle spare parts management.</li>
              <li><i class="ri-check-double-line"></i> <b>Innovators in Automotive Tech:</b> We combine expertise with cutting-edge technology.</li>
              <li><i class="ri-check-double-line"></i> <b>Customer-Centric Approach:</b> Your success is our priority.</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-up" data-aos-delay="300">
            <p>
              We understand the complexities of the spare parts ecosystem, from inventory management to supplier relations. That's why we've designed Gear Up to simplify these processes, helping businesses stay competitive and vehicles on the road.Our commitment to excellence and continuous improvement drives us forward. <br> <br>We take pride in providing a robust, user-friendly system that meets the evolving needs of our customers. Together, we're changing the way vehicle spare parts are managed, one gear at a time.Join us on this exciting journey, and let's gear up for success together."
            </p>
            
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

  
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2 style="font-family: 'Roboto', sans-serif;">Contact Us</h2>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="contact-about">
              <h3>
                <a href="index.html"><span style="color: black; font-family: 'Roboto', sans-serif;">Gear</span><span
                    style="color: #3498db">Up</span></a>
              </h3>
              <p class="fw-medium fs-3">Your Ultimate Solution for Streamlined Vehicle Spare Parts Management. </p>
              <div class="social-links">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
            <div class="info">
              <div>
                <i class="ri-map-pin-line"></i>
                <p>New Kandy Rd<br>Malabe, Sri Lanka</p>
              </div>

              <div>
                <i class="ri-mail-send-line"></i>
                <p>gearup@info.com</p>
              </div>

              <div>
                <i class="ri-phone-line"></i>
                <p>+94 11 234 5678</p>
              </div>

            </div>
          </div>

          <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">
            <form action="ContactUsServlet" method="post" role="form" class="php-email-form">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
              </div>
              <div class="form-group">
                <input type="email" name="email" class="form-control"  id="email" placeholder="Your Email" required>
              </div>
              <div class="form-group">
                <input type="text"  name="subject" class="form-control" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
      

      
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="container">
        <div class="row d-flex align-items-center">
          <div class="col-lg-6 text-lg-left text-center">
            <div class="copyright">
              &copy; Copyright
              <strong>
                <h1>
                  <a href="index.html"><span style="color: black; font-family: 'Roboto', sans-serif">Gear</span><span
                      style="color: #3498db">Up</span></a>
                </h1>
              </strong>
              <p style="
                  color: black;
                  font-family: 'Roboto', sans-serif;
                  margin-top: -1.2%;
                ">
                Revving your vehicle solutions
              </p>
              All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="">S2/MLB/WD/G28</a></div>
          </div>
          <div class="col-lg-6">
            <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
              <a href="#index.jsp" class="scrollto">Home</a>
              <a href="#about" class="scrollto">About</a>
              <a href="#">Privacy Policy</a>
              <a href="#">Terms of Use</a>
            </nav>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>


    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>

  </html>