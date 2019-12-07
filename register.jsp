<%-- 
    Document   : login
    Created on : Aug 24, 2019, 9:38:55 AM
    Author     : dhaval Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <title>Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/style.css">
    <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
     <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
    
    <script>
		 new WOW().init();
		</script>
                
    <script>
  function isAlfa(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        return false;
    }
    return true;
}
    </script>
    <script>
  function isAlfa(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        return false;
    }
    return true;
}
    </script>
<style>
  .ftco-navbar-light .navbar-nav > .nav-item > .nav-link {
    font-size: 14px;
    padding-top: .15rem;
    padding-bottom: .9rem;
    padding-left: 20px;
    padding-right: 20px;
    color: #fff;
    font-weight: 400;
    opacity: 1 !important;
}
              .ftco-footer {
    font-size: 16px;
    background: #222831;
    padding: 5em 0 3em 0;
} 
.hero-wrap{
     height: 299px;
}
 .col-md-9 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 75%;
     max-width: 75%;
    padding-bottom: 299px;
} 
</style>

   
    </head>
  <body>
    
 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">ATS</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
         <li class="nav-item"><a href="passreg.jsp" class="nav-link">Pass Registration</a></li>
           <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
          <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                     <li class="nav-item"><a href="register.jsp" class="nav-link">Registration</a></li>
           <li class="nav-item"><a href="login.jsp" class="nav-link">Log-in</a></li>

           </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url('images/top-banner.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
             <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Registration</h1>
          </div>
        </div>
      </div>
    </div>

  <section id="contact" class="contact-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 contact-sec">
                    <!--<div class="row contact-form-design-area">-->
                    <div class="col-xl-offset-3 col-lg-offset-3 col-xl-6 col-lg-6 col-md-12 m-auto">
                        <div class="section-title text-center">
                            <h2>Create an account</h2>
                            <div class="title-separator-outer ">
                                <div class="title-separator bg-primary style-liner"></div>
                            </div>
                        </div>
                        <!-- START CONTACT FORM DESIGN AREA -->
                        <div class="login-form">
                            <form id="login-form" action="registerprocess.jsp" method="post">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="clr-777">Enter First Name</label>
                                        <input type="text" name="fname" class="form-control" id="first-name" placeholder="First Name" onkeypress="return isAlfa(event)" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="clr-777">Enter Last Name</label>
                                        <input type="text" name="lname" class="form-control" id="first-name" placeholder="Last Name" onkeypress="return isAlfa(event)" required="required">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                        <label class="clr-777">Enter Email</label>
                                        <input type="email" name="email" class="form-control" id="first-name" placeholder="Email" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="clr-777">Mobile Number</label>
                                        <input type="text" name="mnumber" class="form-control" id="first-name" onkeypress="return isNumber(event)" maxlength="10" placeholder="Mobile Number" required="required">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                        <label class="clr-777">Enter Your Password</label>
                                        <input type="password" name="password" class="form-control" id="password" title="Password must contain at least 8 characters, including UPPER/lowercase and numbers." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Password" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="clr-777">Confirm Password</label>
                                        <input type="password" name="cpassword" class="form-control" id="cpassword" placeholder="ConfirmPassword" required="required">
                                    </div>
                                    <div class="col-md-12 text-center">
                                        <div class="form-group">
                                            <input type="checkbox" name="remember" required> I agree to the term to use and privacy
                                        </div>
                                    </div>
                                    <div class="col-md-12 text-center login-btn">
                                        <div class="actions wow fadeInUp" data-wow-delay=".4s">
                                            <input type="submit" value="Sign Up" id="btnSubmit" class="" title="Create Your Account!!!">
                                        </div>
                                    </div>
                                </div>
                                
             <%

if(request.getParameter("st")!=null)
   {
    %>
    <script>
    alert("Your Account Created successfully");
    </script>
    
    <%
    
}
else if(request.getParameter("st1")!=null)
    {
     %>
    <script>
    alert("Email or Mobile Number Already used!!!");
    </script>
    
    <%
    }

  
%>                          
                            </form>
                       
                            
<script>
var myInput = document.getElementById("password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>


                            
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#cpassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script> 
                            
                        </div>
                        <!-- / END CONTACT FORM DESIGN AREA </div> -->
                    </div>
                </div>
            </div>
        </div>
    
    </section>

 <section class="social-login btm_padding">
        <div class="container">
                <div class="section-title text-center">
                    <h2>Or</h2>
                    <div class="title-separator-outer ">
                        <div class="title-separator bg-primary style-liner"></div>
                    </div>
                </div>
                <div class="col-md-offset-3 col-md-6 m-auto">
                    <div class="row">
                    <div class="col-xl-6 col-md-12">
                        <button class="slogin-btn facebook-lbtn"><i class="fa fa-facebook"></i> Login Via Facebook</button>
                    </div>
                    <div class="col-xl-6 col-md-12">
                        <button class="slogin-btn twitter-lbtn"><i class="fa fa-twitter"></i> Login Via Twitter</button>
                    </div>
                </div>
                
                </div>
        </div>
    </section>
    
    
   <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">ATS</h2>
              <p>Advance Travelling System would give information about Bus routes with map and timing. Also, this will provide the online registration of pass service and ticket booking.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
               </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Service</a></li>
                <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                 
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">352,353 A , Nr. Bhavik Publications, Sarkhej - Gandhinagar Hwy, opp. Bhagwat Vidyapith, Gota, Ahmedabad, Gujarat - 382481</span></li>
	                <li><span class="icon icon-phone"></span><span class="text">+91 7874277637</span></li>
	                <li><span class="icon icon-envelope"></span><span class="text">99047dhaval@gmail.com</span></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved | This Design is made with <i class="icon-heart" aria-hidden="true"></i> by SOCET Students
            </p>
          </div>
        </div>
      </div>
    </footer>
    
  

 <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
    </body>
</html>

