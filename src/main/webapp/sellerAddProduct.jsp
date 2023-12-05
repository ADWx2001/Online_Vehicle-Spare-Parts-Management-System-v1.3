<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="css/styleprofile.css" rel="stylesheet" />

  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex align-items-center justify-content-between">
        <div class="logo">
          <!--<h1 id="logo">
            <a href="index.html"><span style="color: black; font-family: 'Roboto', sans-serif">Gear</span><span
                style="color: #3498db">Up</span></a>
          </h1>
          <p>Revving your vehicle solutions</p>
         Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        </div>

        <nav id="navbar" class="navbar">
          <ul>
           <li>
              <a class="nav-link scrollto" href="sellerDashboard.jsp">Home</a>
            </li>
            <li>
              <form action="SellerSignOutServlet" method="get"><button class="btn btn-danger" style="margin-left:700px;" type="submit">Sign out</button></form>
            </li>
            
          </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <main id="main">
        
        <div class="d-flex flex-column ">
			<div class="profile pt-5 mt-5">
             <%
		        String sellerFname = (String) session.getAttribute("sellerFname");
             	
		        int sellerId = (int) session.getAttribute("sellerId");
    		%>
                <h1 class="text-black mt-5">Hello, <%=sellerFname %></h1>
                <h4 class="text-black mt-5 fw-bold text-center">Seller ID : <%=sellerId %></h4>
                <div class="social-links mt-3 text-center pt-5">
                  
                </div>
              </div>
           

            <nav id="navbar" class="nav-menu ">
                <a href="sellerProducts.jsp"><button class=" mt-5 p-3" id="btn-prof">My Products</button></a><br>
                <a href="sellerManageInventory.jsp"><button class=" mt-5 p-3" id="btn-prof">Manage Inventory</button></a>
                <a href="sellerOrederRequests.jsp"><button class=" mt-5 p-3" id="btn-prof">Order requests</button></a>
                <a href="sellerProfileChoose.jsp"><button class=" mt-5 p-3" id="btn-prof">My Profile</button></a>
                <a href="sellerProfileChoose.jsp"><button class="btn btn-danger  mt-5 p-3 " style="padding: 15 50 15 50 ;
    background-color: #D80032;
    color:white;
    border-radius: 40px;
    margin-left: 40px;
    border-style: none;
  ">Delete Account</button></a>
          
            </nav><!-- .nav-menu -->

          </div>
        </main>
    <!-- End #main -->


    
        <section style="margin-left: 300px;margin-top:150px;">

        <!--Enn oon code tika me section eka athule gahpn aaa-->

          <form action="AddProductServlet" method="post" enctype="multipart/form-data" class="shadow-sm" style="width:60%;margin-left:250px;margin-bottom:200px;padding:70px;background-color:#F0F0F0;border-radius:20px;">
          <h2 class="fw-bold" style="margin-top:-10px;">Add an item</h2>
          <br>
          
          	  <div class="form-group">
			    <label for="sellerID">Seller ID</label>
			    <input type="text" name="sellerid" value="<%=sellerId %>" class="form-control shadow-sm"   readonly>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputEmail1">Title</label>
			    <input type="text" name="title" class="form-control shadow-sm"   placeholder="Title" required>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputEmail1">Brand</label>
			    <input type="text" name="brand" class="form-control shadow-sm"   placeholder="Title" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">Category</label>
			    <input type="text" name="category" class="form-control shadow-sm"  placeholder="Category" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">Description</label>
			    <textarea type="text" name="description" class="form-control shadow-sm" placeholder="Description" require></textarea>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">Model</label>
			    <input type="text" name="model" class="form-control shadow-sm" placeholder="Model" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">Quantity</label>
			    <input type="number" name="quantity" class="form-control shadow-sm" placeholder="Quantity" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">Price</label>
			    <input type="number" name="price" class="form-control shadow-sm"  placeholder="Price" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">Availability</label>
			    <select name="availability">
			    	<option value="yes" >Yes</option>
			    	<option value="no" >No</option>
			    </select>
			  </div>
			  
			  <div class="form-group">
			    <label for="display1">Display Image</label>
			    <input type="file" name="image1" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="display2">product Image1</label>
			    <input type="file" name="image2" require>
			  </div>
			  
			  <div class="form-group">
			    <label for="display3">product Image2</label>
			    <input type="file" name="image3" require>
			  </div>
			  <br>
			  <button type="submit" class="btn btn-success">Submit</button>
		</form>



        </section>


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

