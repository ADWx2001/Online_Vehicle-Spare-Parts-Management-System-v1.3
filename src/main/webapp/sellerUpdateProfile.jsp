<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
	
	<c:forEach var="seller" items="${sellerDetails}">
		${seller.sellerId}
		${seller.fname}
	</c:forEach>
	
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
              <a class="nav-link scrollto"  href="sellerAddProduct.jsp">Add product</a>
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
        String sellerFname = (String) session.getAttribute("sellerfname");
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


    
        <section style="margin-left: 350px;margin-top:150px;">
		
		<%
			
			String sfname = request.getParameter("fname");
			String slname = request.getParameter("lname");
			String susername = request.getParameter("username");
			String semail = request.getParameter("email");
			String spassword = request.getParameter("passkey");
			String sphone = request.getParameter("contact");
			String saddress = request.getParameter("address");
		%>
		
        <!--Enn oon code tika me section eka athule gapn aaa-->

         <form action="SellerUpdateProfile" method="post" style="width:60%;margin-left:200px;">
        
		  <div class="form-group">
		    <label for="selletid">Seller ID:</label>
		    <input type="number" class="form-control" id="exampleInputEmail1" name="sellerid" readonly value="<%=session.getAttribute("sellerId")%>">
		   <small class="text-danger form-text ">Once you recieved Seller ID you cannot change it.</small>
		  </div>
		  
		  <div class="form-group">
		    <label for="">First Name:</label>
		    <input type="text" class="form-control" name="fname" id="exampleInputPassword1" value="<%=session.getAttribute("sellerfname")%>">
		  </div>
		  
		  <div class="form-group">
		    <label for="">Last Name:</label>
		    <input type="text" class="form-control" name="lname" id="exampleInputPassword1" value="<%=session.getAttribute("sellerlname")%>">
		  </div>
		  
		  <div class="form-group">
		    <label for="">Username:</label>
		    <input type="text" class="form-control" name="username"  id="exampleInputPassword1" value="<%=session.getAttribute("username")%>">
		  </div>
		  
		  <div class="form-group">
		    <label for="">Email:</label>
		    <input type="email" class="form-control" name="email"  id="exampleInputPassword1" value="<%=session.getAttribute("email")%>">
		  </div>
		  
		  <div class="form-group">
		    <label for="">Password:</label>
		    <input type="password" class="form-control" name="pass"  id="exampleInputPassword1" value="<%=session.getAttribute("passkey")%>">
		  </div>
		  
		  <div class="form-group">
		    <label for="">Phone:</label>
		    <input type="text" class="form-control" name="phoneNumber" id="exampleInputPassword1" value="<%=session.getAttribute("contact")%>">
		  </div>
		  
		  <div class="form-group">
		    <label for="">Address:</label>
		    <input type="text" class="form-control" name="address" id="exampleInputPassword1" value="<%=session.getAttribute("address")%>">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Update Profile</button>
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
</html>