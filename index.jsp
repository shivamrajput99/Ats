<!DOCTYPE html>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
 

String user=request.getParameter("user");

  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
  
       
%>

<html lang="en">
  <head>
    <title>Advance Travelling System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

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
    <link rel="stylesheet" href="css/style.css">
        
        <style>
              .ftco-footer {
    font-size: 16px;
    background: #222831;
    padding: 5em 0 3em 0;
}
.ftco-counter {
    padding: 6em 0;
}
.modal-body p{
    color: black;   
}
.modal-dialog {
    max-width: 900px;
    margin: 1.75rem auto; }

.slider-text h1 {
    font-size: 60px;
    color: #212529;
    line-height: 1.2;
    font-weight: 200;
}
.slider-text p {
    font-size: 20px;
    line-height: 1.5;
    font-weight: 300;
    color: #212529;
}
.ftco-navbar-light .navbar-nav > .nav-item > .nav-link {
    font-size: 14px;
    padding-top: .9rem;
    padding-bottom: .9rem;
    padding-left: 20px;
    padding-right: 20px;
    color: #212529;
    font-weight: 400;
    opacity: 1 !important;
}   
.ftco-navbar-light .navbar-brand {
    color: #212529;
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
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/ats.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Advance <br></strong>Travelling System</h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Here, you can show details of buses as per your choice.</p>
            <div class="block-17 my-4">
              <form action="route.jsp" method="post" class="d-block d-flex">
                <div class="fields d-block d-flex">
                   <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="source" id="source" class="form-control" placeholder="Keyword search" required>
                      <option value="">From</option>
                       <%
Statement statement =null;
ResultSet rs =null;
statement = connection.createStatement();
statement = connection.createStatement();
String query = "Select * from source";
rs=statement.executeQuery(query);
out.println(query);

while(rs.next())
    {
        
            %>
            <option value="<% out.println(rs.getInt("source_id"));   %>"><% out.println(rs.getString("source_name"));   %></option>
            <%
            }
rs.close();
statement.close();
%>
                    </select>
                  </div>
                  
                  
                  
                  <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="destination" id="destination" class="form-control" placeholder="Keyword search" required>
                      <option value="">To</option>
                   <%
Statement statement1 =null;
ResultSet rs1 =null;
statement1 = connection.createStatement();
String query1 = "select * from destination";
rs1=statement1.executeQuery(query1);
out.println(query1);

while(rs1.next())
    {
        
           %>
            <option value="<% out.println(rs1.getInt("destination_id"));   %>"><% out.println(rs1.getString("destination_name"));   %></option>
            <%
            }
out.print(rs1);
rs1.close();
statement1.close();
%>  
                    </select>
                  </div>
                </div>
                <input type="submit" class="search-submit btn btn-primary" value="Search">  
              </form>
            </div>
            
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section services-section bg-light">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="fas fa-address-card"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Pass Registration</h3>
                <p>This portal provide online pass registration for both service pass and students pass.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="fas fa-heart"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Travellers Love Us</h3>
                <p>Travellers love this portal just because of these online time saving services.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="fas fa-ticket-alt"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Ticket Booking</h3>
                <p>User can book online ticket and will receive e-ticket through SMS.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="fas fa-envelope"></span></div></div>
              <div class="media-body p-2 mt-2"> 
                <h3 class="heading mb-3">Email Service</h3>
                <p>E-mail servic will alert the user about bus related events like change in timing, price and route.</p>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>
    
    
            <%
Statement statement3 =null;
ResultSet rs3 =null;
statement3 = connection.createStatement();

%>  
  
    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">Some fun facts</h2>
           </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-10">
		    		<div class="row">
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="<% 
 
                                                                                                                                                                             
String query2 = "select * from account"; 
rs3=statement3.executeQuery(query2);
      int count=0; 
while(rs3.next())
    {
    count++;
    }
      out.println(count);
%>							
">0</strong>
		                <span>Users</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="<% 
 
                                                                                                                                                                             
String query3 = "select * from source"; 
rs3=statement3.executeQuery(query3);
      int count1=0; 
while(rs3.next())
    {
    count1++;
    }
      out.println(count1);
%>">0</strong>
		                <span>Number of Bus Stand</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="<% 
 
                                                                                                                                                                             
String query4 = "select * from route"; 
rs3=statement3.executeQuery(query4);
      int count2=0; 
while(rs3.next())
    {
    count2++;
    }
      out.println(count2);
%>">0</strong>
		                <span>Available Routes</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="<% 
 
                                                                                                                                                                             
String query5 = "select * from passreg"; 
rs3=statement3.executeQuery(query5);
      int count3=0; 
while(rs3.next())
    {
    count3++;
    }
      out.println(count3);
%>">0</strong>
		                <span>Registered Pass Forms</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>


   
    <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-start">
          <div class="col-md-5 heading-section ftco-animate">
             <h2 class="mb-4 pb-3"><strong>Why</strong> Choose Us?</h2>
              
            <p>Advance Travelling System would give information about bus routes with secific timing and map.</p>
            <p>Also this application will
provide the online registration of pass service for each different ride. You do not need to go to
the ticket-window for buying tickets; instead you can book it through your smart-phone or any
other devices which are compatible with our product.</p>
<p>For all product related transactions, EMoney will be used.</p>
            </div>
					<div class="col-md-1"></div>
       <!-- <div class="col-md-6 heading-section ftco-animate">
          	<span class="subheading">Testimony</span>
            <h2 class="mb-4 pb-3"><strong>Our</strong> Guests Says</h2>
          	<div class="row ftco-animate">
		          <div class="col-md-12">
		            <div class="carousel-testimony owl-carousel">
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		                    <p class="name">Dennis Green</p>
		                    <span class="position">Guest from italy</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/person_2.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		                    <p class="name">Dennis Green</p>
		                    <span class="position">Guest from London</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/person_3.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		                    <p class="name">Dennis Green</p>
		                    <span class="position">Guest from Philippines</span>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
          </div> -->
        </div>
      </div>
    </section>

   		
		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Subcribe to our Newsletter</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
              <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-8">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
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
                <li class="ftco-animate"><a href="https://www.facebook.com/Advance-Travelling-System-269088350674805/?modal=admin_todo_tour"><span class="icon-facebook"></span></a></li>
               </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Service</a></li>
                <li><a href="#" class="py-2 d-block" data-toggle="modal" data-target="#myModal">Terms and Conditions</a></li>
                
  
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Terms and Conditions</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
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
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
