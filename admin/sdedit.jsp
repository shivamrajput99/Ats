<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
 <link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script> 
 
   
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
<!-- charts -->
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<link rel="stylesheet" href="css/morris.css">
<!-- //charts --><meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->


<style>
    
#page-container {
  position: relative;
  min-height: 79.5vh;
}

#content-wrap {
  padding-bottom: 2.5rem;    /* Footer height */
}

.footer{
    background-color: #00bcd4;
    }
    
    .title-separator-outer {
    overflow: hidden;
    color: #62ac1e;
}

.title-separator {
    display: inline-block;
    height: 3px;
    width: 80px;
    margin-bottom: 10px;
    position: relative;
}
.section-title .title-separator-outer.inline_btm{
    width:100%;
    height: 6px;
    border-bottom: 2px solid #ddd;

}
.title-separator.style-liner {
    width: 70px;
    height: 6px
}

.title-separator.style-icon {
    width: 30px;
    height: auto;
    text-align: center;
    font-size: 20px;
}

.title-separator[class*="style-"]:after,
.title-separator[class*="style-"]:before {
    content: "";
    position: absolute;
    top: 5px;
    left: 70px;
    width: 100%;
    height: 2px;
    background: #ddd;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
}

.title-separator[class*="style-"]:before {
    left: auto;
    right: 70px;
}

.title-separator.style-skew {
    width: 15px;
    height: 10px;
    margin-left: 1px;
    margin-right: 1px;
    -moz-transform: skewX(-10deg);
    -webkit-transform: skewX(-10deg);
    -o-transform: skewX(-10deg);
    -ms-transform: skewX(-10deg);
    transform: skewX(-10deg);
}

.title-separator.style-skew[class*="style-"]:after,
.title-separator.style-skew[class*="style-"]:before {
    width: 80px;
    height: 4px;
    left: 20px;
    -moz-transform: translateY(-50%) skewX(-10deg);
    -webkit-transform: translateY(-50%) skewX(-10deg);
    -o-transform: translateY(-50%) skewX(-10deg);
    -ms-transform: translateY(-50%) skewX(-10deg);
    transform: translateY(-50%) skewX(-10deg);
}

.title-separator.style-skew[class*="style-"]:before {
    right: 20px;
    left: auto;
}

.section-title h2 {
    font-size: 36px;
    text-transform: capitalize;
    font-weight: 500;
    margin-top: 0;
    margin-bottom: 15px;
    font-family: "Rubik" , sans-serif;
    display: inline-block;
}
element.style {
    visibility: visible;
    animation-delay: 0.4s;
    animation-name: fadeInUp;
}
.login-form .login-btn {
    margin-top: 20px;
}
.login-form input[type='submit'] {
    display: inline-block;
    color: #fff;
    padding: 12px 25px;
    text-transform: capitalize;
    font-size: 14px;
    border: 1px solid #62ac1e;
    background-color: #62ac1e;
    border-radius: 0px;
    font-weight: 600;
}
.col-md-offset-4 {
    margin-left: 25%;
    margin-top: 4%;
}
.agile-grids {
    margin-left: -20%;
}
</style>
</head>
<body class="dashboard-page">
	<script>
	        var theme = $.cookie('protonTheme') || 'default';
	        $('body').removeClass (function (index, css) {
	            return (css.match (/\btheme-\S+/g) || []).join(' ');
	        });
	        if (theme !== 'default') $('body').addClass(theme);
        </script>
	<nav class="main-menu">
		<ul>
			<li>
				<a href="index.jsp">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Dashboard
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fas fa-bus nav-icon" aria-hidden="true"></i>
				<span class="nav-text">
					Add Bus Stop
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="source.jsp">
					Source
					</a>
					</li>
					<li>
					<a class="subnav-text" href="destination.jsp">
					Destination
					</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
                              &nbsp;     <i class="fas fa-map-marker-alt nav-icon" aria-hidden="true"></i>                                
				<span class="nav-text">
				Source/Destination
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="sdedit.jsp">Edit</a>
					</li>
					<li>
						<a class="subnav-text" href="sddelete.jsp">Delete</a>
					</li>
				</ul>
			</li>
			 
			<li>
				<a href="addroute.jsp">
                                     <i class="fas fa-route nav-icon" aria-hidden="true"></i>
                                  
 					<span class="nav-text">
						Add Routes
					</span>
				</a>
			</li>
			<li>
				<a href="viewmessage.jsp">
                                    <i class="fa fa-comment-o nav-icon" aria-hidden="true"></i>
					<span class="nav-text">
					View Messages
					</span>
				</a>
			</li>
			<li>
				<a href="passform.jsp">
					<i class="fa fa-id-card-o nav-icon"></i>
					<span class="nav-text">
					Pass Registration Forms
					</span>
				</a>
			</li>
                        <li>
				<a href="users.jsp">
                                    <i class="fa fa-user-o nav-icon" aria-hidden="true"></i>
					<span class="nav-text">
					Registered Users
					</span>
				</a>
			</li>
			
		</ul>
                
                
		<ul class="logout">
			<li>
			<a href="logout.jsp">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		</ul>
	</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="">
				<h1>Advance Travelling System</h1>
			</div>
			 
			 
		
			<div class="clearfix"> </div>
		</section>
                
                <div id="page-container">
                <div id="content-wrap">
		<div class="main-grid">
			
	 <section id="contact" class="contact-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 contact-sec">
                    <!--<div class="row contact-form-design-area">-->
                    <div class="col-md-offset-3 col-md-6 m-auto">
                        <div class="section-title text-center">
                            <h2>Source Edit</h2>
                          <div class="title-separator-outer ">
                                <div class="title-separator bg-primary style-liner"></div>
                            </div>
                        </div>
                        <!-- START CONTACT FORM DESIGN AREA -->
                        <div class="agile-grids">	
				<!-- tables -->
				
				
				<div class="agile-tables">
					<div class="w3l-table-info">
					    <table id="table">
						<thead>
						  <tr>
							<th>Id.no</th>
							<th>Source</th>
							<th>Edit</th>
							 
						  </tr>
						</thead>
                                                
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String sql="select * from source";
rs1=statement.executeQuery(sql);
while(rs1.next())
    {
        
           
%>   
                                                
						<tbody>
						  <tr>
                                                      <td>
						<% out.println(rs1.getString("source_id"));%>
                                                    </td>
                                                    <td>
						<% out.println(rs1.getString("source_name"));%>
                                                    </td>
                                               <td>
                                            <a href="source.jsp?sourceid=<% out.println(rs1.getString("source_id"));%>">
                                            <img src="images/edit.jpeg" alt="ed" width="50px" height="20px" >
                                            </a>  
                                           </td>
                                                </tr>
						  <% } %>
						</tbody>
					  </table>
					</div>
				  
				  
				</div>
				<!-- //tables -->
			</div>
                        <!-- / END CONTACT FORM DESIGN AREA </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
		

   <section id="contact" class="contact-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 contact-sec">
                    <!--<div class="row contact-form-design-area">-->
                    <div class="col-md-offset-4 col-md-6 m-auto">
                        <div class="section-title text-center">
                            <h2>Destination Edit</h2>
                          <div class="title-separator-outer ">
                                <div class="title-separator bg-primary style-liner"></div>
                            </div>
                        </div>
                        <!-- START CONTACT FORM DESIGN AREA -->
                        <div class="agile-grids">	
				<!-- tables -->
				
				
				<div class="agile-tables">
					<div class="w3l-table-info">
					    <table id="table">
						<thead>
						  <tr>
							<th>Id.no</th>
							<th>Destination</th>
							<th>Edit</th>
							 
						  </tr>
						</thead>
                                                
<%
String connectionURL1 = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection1 = null;
Statement statement1 = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String sql1="select * from destination";
rs=statement.executeQuery(sql1);
while(rs.next())
    {
        
           
%>   
                                                
						<tbody>
						  <tr>
                                                      <td>
						<% out.println(rs.getString("destination_id"));%>
                                                    </td>
                                                    <td>
						<% out.println(rs.getString("destination_name"));%>
                                                    </td>
                                               <td>
                                            <a href="destination.jsp?destinationid=<% out.println(rs.getString("destination_id"));%>">
                                            <img src="images/edit.jpeg" alt="ed" width="50px" height="20px" >
                                            </a>  
                                           </td>
                                                </tr>
						  <% } %>
						</tbody>
					  </table>
					</div>
				  
				  
				</div>
				<!-- //tables -->
			</div>
                        <!-- / END CONTACT FORM DESIGN AREA </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
                        
                  
                        
			</div></div></div>
			
		<!-- footer -->
                
		<div class="footer">
			<p>© 2019 Advance Travelling System . All Rights Reserved . Design by SOCET Students</p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>
