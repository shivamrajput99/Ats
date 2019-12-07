    

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
  
       
Statement statement3 =null;
ResultSet rs3 =null;
statement3 = connection.createStatement();

%>
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
.comments-icon i.fa.fa-ticket, .comments-icon i.fa.fa-comments, .comments-icon i.fa.fa-id-card-o, .comments-icon i.fa.fa-users {
    font-size: 3em;
    color: #ffffffc4;
} 
  .comments-icon i.fa.fa-ticket, .comments-icon i.fa.fa-comments, .comments-icon i.fa.fa-id-card-o, .comments-icon i.fa.fa-users {
    font-size: 4em;
    color: #ffffffc4;
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
                       <!-- <li>
				<a href="addtiming.jsp">
                                     <i class="fas fa-route nav-icon" aria-hidden="true"></i>
                                  
 					<span class="nav-text">
						Add Bus Timing
					</span>
				</a>
			</li>-->
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
			
			<div class="social grid">
					<div class="grid-info">
						<div class="col-md-3 top-comment-grid">
							<div class="comments views">
								<div class="comments-icon">
									<i class="fa fa-users"></i>
								</div>
								<div class="comments-info views-info">
									<h3><% 
 
                                                                                                                                                                             
String query2 = "select * from account"; 
rs3=statement3.executeQuery(query2);
      int count=0; 
while(rs3.next())
    {
    count++;
    }
      out.println(count);
%></h3>
									<a href="users.jsp">Users</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-3 top-comment-grid">
							<div class="comments">
								<div class="comments-icon">
									<i class="fa fa-comments"></i>
								</div>
								<div class="comments-info">
									<h3><% 
 
                                                                                                                                                                             
String query4 = "select * from message"; 
rs3=statement3.executeQuery(query4);
      int count2=0; 
while(rs3.next())
    {
    count2++;
    }
      out.println(count2);
%></h3>
									<a href="viewmessage.jsp">Messages</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-3 top-comment-grid">
							<div class="comments tweets">
								<div class="comments-icon">
									<i class="fa fa-id-card-o"></i>
								</div>
								<div class="comments-info tweets-info">
									<h3><% 
 
                                                                                                                                                                             
String query5 = "select * from passreg"; 
rs3=statement3.executeQuery(query5);
      int count3=0; 
while(rs3.next())
    {
    count3++;
    }
      out.println(count3);
%></h3>
									<a href="#">pass Forms</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						
                                                <div class="col-md-3 top-comment-grid">
							<div class="comments likes">
								<div class="comments-icon">
									<i class="fa fa-ticket"></i>
								</div>
								<div class="comments-info likes-info">
									<h3>0</h3>
									<a href="#">Booked Tickets</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
			</div>
                        
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
