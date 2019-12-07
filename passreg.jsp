<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Pass Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
 
  
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="https://online.tsrtcpass.in:443/css/jqueryCustom.css" rel="stylesheet" type="text/css">
<script src="https://online.tsrtcpass.in:443/js/studentBusPass/jquery-latest.min.js"></script>
<script type="text/javascript" charset="utf-8" src="https://online.tsrtcpass.in:443/js/mandalVillageScript.js?version=3"></script>
<script type="text/javascript" charset="utf-8" src="https://online.tsrtcpass.in:443/js/commonjsvalidations.js?version=1"></script>
<script type="text/javascript" charset="utf-8" src="https://online.tsrtcpass.in:443/js/jquery-ui.js"></script>
<script type="text/javascript" charset="utf-8" src="https://online.tsrtcpass.in:443//js/studentBusPass/belowssc.js?version=1"></script>


<link href="https://online.tsrtcpass.in:443/css/newFormStyle.css" type="text/css" rel="stylesheet">

<script type="text/javascript">
 $( document ).ready(function() {
        $(this).bind("contextmenu", function(e) {
            e.preventDefault();
        });
         $(document).bind('copy paste', function (e) {
       e.preventDefault();
    });


    $(document).keydown(function(event){
    if(event.keyCode==123){
    return false;
   }
else if(event.ctrlKey && event.shiftKey && event.keyCode==73){
      return false;  //Prevent from ctrl+shift+i
   }
});

       });

$(function() {
    $("#studentphoto").on("change", function()
    {
    	var fileExt = $('#studentphoto').val().split('.').pop().trim();
    	if(fileExt != "jpg" && fileExt != "jpeg" && fileExt != "JPG" && fileExt != "JPEG") {
    		alert("Only jpg and jpeg format files are allowed");
    		$(this).val('');
    		return false;
    	}else{
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
                  if (filesizeCheck($('#studentphoto')[0],100))
                  {
                  reader.onloadend = function(){ // set image data as background of div
                $("#imagePreview").css("background-image", "url("+this.result+")");
                document.getElementById("imagePreview").style.display="";
            }
             }
             else{
              document.getElementById("imagePreview").style.display="none";
            };
           };
        };
    });
});

function showDeliverymode(obj)
	{
		$('#collectpassId')[0].selectedIndex=0;
		//alert("33333333333 "+$(obj).find(":selected").val());
		
		if($(obj).find(":selected").val()==1)//$('#paymentmodeId')[0].selectedIndex
		{
			$('#tPlus3DaysId option').remove();
			$("#tPlus3DaysId").append("<option value=''>" + "--- Choose Pass Valid From Date ---" + "</option>");
				var currdate = new Date();
				for(i=1;i<=7;i++)
				{
					var newdate = new Date(currdate );
					newdate.setDate(newdate.getDate() + i);
					var dd = newdate.getDate();
    				var mm = newdate.getMonth() + 1;
    				var y = newdate.getFullYear();
    				var someFormattedDate = dd + '/' + mm + '/' + y;//value=""> 
    				$("#tPlus3DaysId").append("<option value='" + someFormattedDate+ "'>" + someFormattedDate + "</option>");
				}
					
					$('#dateDropdown').show();
					$('#noId').hide();
					$('#gatewaysid').show();
					$('#collectpassId').prop("disabled",false);
					$('#paymentDetailsCId').show();
					//$('#courierAddressId').show();
					$('#dateDropdown').hide();
				
			
		}else if($(obj).find(":selected").val()==2)
		{
			$('#collectpassId').prop("disabled","disabled");
			$('#noId').show();
			$('#gatewaysid').hide();
			$('#paymentDetailsCId').hide();
			$('#paymentDetailsId').hide();
			$('#paymentId').hide();
  			$('#submitId').show();
  			$('#courierAddressId').hide();
  			$('#dateDropdown').hide();
			
		}else if($(obj).find(":selected").val()==0)
		{
			$('#collectpassId').prop("disabled",false);
			$('#noId').hide();
			$('#paymentDetailsCId').hide();
			$('#paymentDetailsId').hide();
			$('#paymentId').hide();
  			$('#submitId').show();
  			$('#gatewaysid').hide();
  			$('#courierAddressId').hide();
  			$('#dateDropdown').hide();
		
		}else
		{
			$('#collectpassId').prop("disabled",false);
			$('#noId').hide();
			$('#gatewaysid').hide();
			
			
		}
	}
	
function showPayment(obj)
{
	 //alert($(obj).find(":selected").val());
	 $('#pcourier').text('0');
	 if($('#paymentmodeId')[0].selectedIndex==1 && $(obj).find(":selected").val()==2)
	{
		//if($(obj)[0].selectedIndex==2)
		if($(obj).find(":selected").val()==2)
		{
			$('#pcourier').text('0');
			$('#ptamt').text(parseFloat($('#pamt').text())+parseFloat($('#iamt').text()));
			$('#servicecharge').text(Math.ceil((parseFloat($('#ptamt').text())*(2.5))/100));
			$('#grandTotal').text(parseFloat($('#ptamt').text())+parseFloat($('#servicecharge').text()));
			$('#noId').show();
			$('#dateDropdown').hide();
		}
		 $('#paymentDetailsCId').show();
		/*$('#paymentDetailsId').show(); */
 		$('#paymentId').show();
  		$('#submitId').hide();
   		//$('#nearCounterId').show();
   		//$('#noId').hide();
   		$('#courierAddressId').hide();
	}
	else if($('#paymentmodeId')[0].selectedIndex==2 )// Make Payment and Collect Pass at Counter 
	{
		$('#paymentDetailsCId').hide();
		//$('#paymentDetailsId').hide();
 		$('#paymentId').hide();
  		$('#submitId').show();
   		$('#noId').show();
   		$('#courierAddressId').hide();
   		$('#dateDropdown').hide();
	}else
	{
		$('#courierAddressId').hide();
		 $('#paymentDetailsCId').hide();
		 $('#noId').hide();
		  $('#paymentDetailsCId').show();
	}
	
}

function getPassValidityDates()
{
	$('#tPlus3DaysId option').remove();
	$('#tPlus3DaysId').append("<option value=''>Choose Pass Valid From Date</option>");
	var paymentmode=$("#paymentmodeId").val();
	//alert("payment mode==>"+paymentmode);
	var passdeliverymode=$("#collectpassId").val();
	//alert("Pass Delivery mode==>"+passdeliverymode);
	var reqUrl,reqdata;
	
                $.ajax({
					url:"loadResources.do?mode=getPassValidityDates&paymentType="+paymentmode+"&deliveryType="+passdeliverymode,
                    //data: "paymentType="+paymentmode+",deliveryType="+deliverymode,
                    success: function (response) {
                            //$('#info').html(response);
                            //alert("Validity Dates Response String ===>"+response);
                            console.log(response);
                            $("#tPlus3DaysId").append(response); }
                    });
}
function hideorshow()
{
$('#paymentmodeId').val('0');
$('#collectpassId').val('0');
$('#paymentDetailsCId').hide();
$('#gatewaysid').hide();
$('#gatewayId').val("");
$('#pamt').text('0');
$('#iamt').text('0');
$('#pcourier').text('0');
$('#servicecharge').text('0');
$('#ptamt').text('0')
$('#grandTotal').text('0');
}

//Get Schoolss List
				function getSchools(target)
				{
				  	var distid=document.getElementById("instdistname").value;
				  	var mandalid=document.getElementById("instmndlname").value;
					if(distid==""){
					  	return false;
					}
				     //var url="counterbelowssc.do?mode=getSchools&distId="+distid+"&mandalId="+mandalid+"&schoolCode="+schoolCode;
					var url="counterbelowssc.do?mode=getSchoolsNew&distId="+distid+"&mandalId="+mandalid+"&schoolCode="+schoolCode;
					$.post(url,function(data){
					if(data.trim() == ""){
						$("#"+target).val("---select---");
					}else{
						$("#"+target).html(data);
					}
				});
				}
				
//21-06-2017

</script>

<script>
$(document).ready(function(){
   $("#gatewayId").change(function() {
     $("#pg_preview").empty();
     if ( $("#gatewayId").val()!="" && $("#gatewayId").val()=="EBS"){
    	$("#pg_preview").append("<img src='./"+"images/EBS_logo_main.png'/>");
     }else if( $("#gatewayId").val()!="" && $("#gatewayId").val()=="HDFC"){
    	$("#pg_preview").append("<img src='./"+"images/logo_hdfcbank.gif'/>");
    }else{
    	$("#pg_preview").append("<img src='./"+"images/payment.png'/>");
     }
   });
   
   $('#cen').change(function() {
  	
  	 	$("#fromplacedistId").html(""); //reset child options
   		$("#toplacedistId").html(""); //reset child options
   		var key=0,value=0;
   		
	   		$("#fromplacedistId").append("<option value=''>---select---</option>");
	   		if($('#distId  :selected').val()!='0')
   			{
   			key=$('#distId  :selected').val();
   			value=$('#distId :selected').text();
   			//alert("Key==> "+key+""+$('#distId  :selected').val());
   			
    			$('#fromplacedistId')
    				.append($("<option></option>")
                    .attr("value",key)
                    .text(value));
                   /*  .attr("value",key)
                    .text(value)); */
    		}
	    	 if($('#instdistname  :selected').val()!='0')
	    	 {
	    	 	key=$('#instdistname  :selected').val();
   				value=$('#instdistname :selected').text();

    			$('#fromplacedistId')
    				.append($("<option></option>")
                    .attr("value",key)
                    .text(value));
    		
    		 }
   		
   		$("#toplacedistId").append("<option value=''>---select---</option>");
    	if($('#distId  :selected').val()!='0')
    	{
    		key=$('#distId  :selected').val();
   			value=$('#distId :selected').text();
   			$('#toplacedistId')
    				.append($("<option></option>")
                    .attr("value",key)
                    .text(value));
    	}
    	if($('#instdistname  :selected').val()!='0'){
    		key=$('#instdistname  :selected').val();
   			value=$('#instdistname :selected').text();
   			$('#toplacedistId')
    				.append($("<option></option>")
                    .attr("value",key)
                    .text(value));	
    	}
    	
    	$("#fromplacedistId option").each(function() {
  			//$(this).siblings("[value='"+ val +"']").remove();
  			$(this).siblings("[value='"+ $(this).val()+"']").remove();
		});
		
		$("#toplacedistId option").each(function() {
  			//$(this).siblings("[value='"+ val +"']").remove();
  			$(this).siblings("[value='"+ $(this).val()+"']").remove();
		});
	});
   });
   
   
</script>
<style>
.w3-button {width:150px;}
</style>
<style>
 .ui-widget-content a {
    color: rgb(252, 88, 117);
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

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<style type="text/css">
#imagePreview {
    width: 100px;
    height: 100px;
    background-position: center center;
    background-size: cover;
    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
    display: inline-block;
}
</style>
 
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>

	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="css/responsive.css" rel="stylesheet" type="text/css">
	<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" type="text/css">

	<script type="text/javascript" src="js/jquery.1.8.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.js"></script>
	<script type="text/javascript" src="js/wow.js"></script>
	<script type="text/javascript" src="js/classie.js"></script>
	<script type="text/javascript" src="js/magnific-popup.js"></script>
	<script src="contactform/contactform.js"></script>
<style>
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
  <body onload="generateCaptcha()">
    
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
             <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Pass Registration</h1>
          </div>
        </div>
      </div>
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
    <br>
        
 <form method="post" action="passregprocess.jsp">
  
&nbsp;&nbsp;&nbsp;&nbsp;
 
		<center>
		
		 
	<table border="0" align="center" bgcolor="#FFFFFF" width="1000px" cellpadding="0" id="insId1" cellspacing="2px">
	</table>
	<div id="divId1">
	<table border="0" align="center" bgcolor="#FFFFFF" cellpadding="0" cellspacing="0">
	<tbody><tr>
        	<td>
		<div id="divId1" class="formstyle">
		<table width="800px" border="0" align="center">
		<tbody><tr>
			<td>
			<fieldset style="width: 750px" class="ofeildset">
				<legend>
					<font style="font-weight: bold;"><b>1.Student Details</b> </font>
                		</legend>
				<table width="100%" border="0" align="center">
					<tbody><tr class="firstrow">
					<th width="18%">&nbsp;<span class="num">1.1</span> Name <font color="red">*</font>
					</th>
                        		<td width="23%"><input type="text" name="name" maxlength="25" value="" onkeyup="return charOnly(this)" onblur="changeToUpperCase(this)" style="width:200px" id="youthname" required>
					</td>
					<th width="18%">&nbsp;<span class="num">1.2</span> Father's / Guardian's Name
					<font color="red">*</font>
					</th>
                                        <td width="23%"><input type="text" name="fname" maxlength="25" value="" onkeyup="return charOnly(this)" onblur="changeToUpperCase(this)" style="width:200px" id="fname" required>
					</td>
        				</tr>
					<tr class="secondrow">
                                         <th width="18%"><span class="num">1.3</span> Date Of Birth <font color="red">*</font><br><small><font size="1" color="blue">(dd-mm-yyyy)</font> </small>
                                         </th>
                                            <td width="23%"><input type="text" name="dobname" maxlength="10" value="" style="width:200px" id="dob" required> 
                                    	<th>&nbsp;<span class="num">1.4</span> Gender  <font color="red">*</font> <br>
					<br>&nbsp;<span class="num">1.5</span> AAdhar No: <font color="red">*</font>
					</th>

					<td width="23%">
                        		<input type="radio" name="radio" value="Female"  id="gender1" required><label> Female </label>
					<input type="radio" name="radio" value="Male" id="gender2"><label> Male </label>
			<br> <br>
					 <input type="text" name="aadharno" maxlength="12" value="" onkeypress="return isNumber(event)" style="width:200px" id="aadharno" required>
                                        </td>
					</tr>

                                        <tr class="firstrow">
                                	<th><span class="num">1.6</span> Mobile No <font color="red">*</font></th>
                        		<td><input type="text" name="mnumber" maxlength="10" value="" onkeypress="return isNumber(event)" style="width:200px" id="studentmobileno" required>
         				</td>

 														 										 

				</tr>
        			
					<tr class="secondrow">
					<th><span class="num">1.7</span> Email <font color="red">*</font></th>
					<td colspan="">
					<input type="text" name="email" value="" onblur="checkEmail(this)" style="width:200px" id="emailId" required>
			</td>
				</tr><tr>
				<th>&nbsp;<span class="num">1.8</span> Photo <font color="red">*</font></th>
					<td colspan="3">
				<input type="file" name="sphoto" value="" style="width:200px" id="studentphoto" required>
				<div id="imagePreview" style="display: none;"></div>
                                    </td>
 														
 														
					</tr>
				</tbody></table>
			</fieldset></td>
				</tr>
				
                                <tr>
			<td>
	<fieldset style="width: 750px" class="ofeildset">
	<legend>
	<font style="font-weight: bold;"><b>2.Residential
				Address Details</b> </font>
		</legend>
		<table>
			<tbody>
	<tr class="secondrow">
	
		<th width="18%"><span class="num">2.1</span> Address<font color="red">*</font></th>
		<td width="23%"><textarea name="raddress" cols="20" rows="1" onkeydown="limitText(this,this.form.countdown,150);" onkeyup="limitText(this,this.form.countdown,150);javascript:RemoveSpecialChar(this)" style="width:200px" id="raddress" required></textarea>
									
                         </td>
                                                                                                              
			</tr>
		 <tr class="firstrow"> <td width="23%"><font size="1">(Maximum characters: 150)You have <input readonly="" type="text" name="countdown" size="3" value="150"> characters left.</font>
                       </td></tr>
			<tr class="secondrow">
		<th width="18%"><span class="num">2.2</span> Postal Code<font color="red">*</font>
		</th>
			<td width="23%"><input type="text" name="pincode" maxlength="6" value="" onkeypress="return isNumber(event)" id="pincode" required></td>
			<th rowspan="3" width="18%" colspan="2">&nbsp;</th>
														
				</tr>
	</tbody></table>
	</fieldset></td>
			</tr>


	<tr id="belowssc">
			<td>
	<fieldset style="width: 750px" class="ofeildset">
				<legend>
	<font style="font-weight: bold;"><b>3.School/College
			Details</b> </font>
	</legend>
	<table>
	<tbody>
	<tr class="secondrow">
	<th width="18%"><span class="num">3.1</span> School/college Name <font color="red">*</font></th>
	<td width="23%"><input type="text" name="scname" onchange="getClasses(),getschollAddress()" style="width:200px" id="instcollname" required></td>
						
              </tr>
                                                                                                      
	<tr class="firstrow">
	<th width="18%"><span class="num">3.2</span> School/college Address<font color="red">*</font></th>
	<td width="23%" colspan="3"><textarea name="scaddress" cols="30" rows="1" style="width:585px" id="inst_address" required></textarea></td>
	</tr>
                  <tr class="secondrow">
		<th width="18%"><span class="num">3.3</span> Postal Code<font color="red">*</font>
					</th>
	<td width="23%"><input type="text" name="pincode2" maxlength="6" value="" onkeypress="return isNumber(event)" id="userProperties" required></td>
	<th rowspan="3" width="18%" colspan="2">&nbsp;</th>
					
			</tr>
</tbody></table>
		</fieldset></td>
						</tr>
				<tr>
		<td>
		<fieldset style="width: 750px" class="ofeildset">
			<legend>
	<font style="font-weight: bold;"><b>4.Pass
			Details</b> </font>
		</legend>
<br><table>
		<tbody><tr class="secondrow">
												
	 <th width="18%" nowrap="nowrap"><span class="num">4.1</span> Pass Type Required <font color="red">*</font>
	</th>
		<td><select name="selectpass" style="width:200px" id="passTypeId" required>
                 <option value="0">Select Pass</option>
                 <option value="Service Pass">Service Pass</option>
               <option value="Manpasand Pass">Manpasand Pass</option>
                       </select></td>
                                                                                                            
             <th width="18%" nowrap="nowrap"><span class="num">4.2</span> Pass Months <font color="red">*</font>
</th>
                                                                                                        
            <td><select name="selectmonth" style="width:200px" id="passTypeId" required>
              <option value="0">Select Months</option>
            <option value="3 Months">3 Months</option>
              <option value="5 Months">5 Months</option>
               </select></td>

			</tr>
												  	
	</tbody></table>
	</fieldset></td>
			</tr>
									
			<tr>
		<td>
	<fieldset style="width: 750px" class="ofeildset">
	<legend>
		<font color="" style="font-weight: bold;"><b>5.Mode of Payment &amp; Pass Collection</b> </font>
	</legend>
		<table>
		<tbody><tr class="firstrow">  
		<th colspan="3" width="20%"> Select Payment Mode<font color="red">*</font> <br></th>
	<td width="23%">
	          		<select name="paymentmode" onchange="showDeliverymode(this);getPassValidityDates();" id="paymentmodeId" required>
             <option value="0">Select Payment Mode</option>
             <option value="1" value="Online">Online Payment</option>
	<option value="At Counter">Payment at Counter</option> <!-- Offline Payment/Other/Payment at Counter -->
                                 </select>
		</td>
				</tr>
									 			
		 
                                                                                     

		<tr class="secondrow">  
	<th colspan="3" width="20%"> Select Pass Delivery Mode <font color="red">*</font><br> 
	</th><td width="23%">
	           		<select name="collectpass" id="collectpassId">
                              <option value="0">Select Pass Delivery Mode</option>
	        			<option value="Home Delivery">Home Delivery</option>
	       			<option value="At Counter">At Counter</option>
                               </select>
		</td>
			</tr>
		</tbody></table>
	</fieldset>
				 </td>
				</tr>
                                                  
                             <tr>
			<td>
	<fieldset style="width: 750px" class="ofeildset">
			<legend>
		<font color="" style="font-weight: bold;"><b>6.Please Enter Valid Captcha</b> </font>
	</legend>
			<table>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" id="inputText"class="form-control input-lg" onkeypress="return isNumber(event)" maxlength="4" placeholder="Enter captcha" tabindex="6" required/>
                    </div>
                      </div>
                     <div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                                            <b> <input type="text" id="captcha" class="form-control input-lg"></b>
                                        </div>
                                    </div>
              
            </div>	  	
		</table>

		</fieldset></td>
			</tr>
														
		   <script>
var captcha;
 
function generateCaptcha() {
    var a = Math.floor((Math.random() * 10));
    var b = Math.floor((Math.random() * 10));
    var c = Math.floor((Math.random() * 10));
    var d = Math.floor((Math.random() * 10));
 
    captcha=a.toString()+b.toString()+c.toString()+d.toString();
    
    document.getElementById("captcha").value = captcha;
}
 
   $(function Captcha() {
        $("#btnSubmit").click(function () {
            var captcha = $("#captcha").val();
            var inputText = $("#inputText").val();
            if (captcha != inputText) {
                alert("captcha do not match.");
                return false;
            }
            return true;
        });
    });

</script> 
	
									</tr>								<tr>
									</tr>
									<tr>
										<td></td>
									</tr>
 <tr>
									<td>
					</td>
					</tr>
									<tr>
										<td>
										</td>
									</tr>
                                                                        
                                                                        
								</tbody></table>
							</div>
							</td>
						</tr>
					</tbody></table>
				</div>
                                
&nbsp;&nbsp;&nbsp;&nbsp;<div class="w3-container">                                
                    <input type="submit" value="Submit" name="submit" id="btnSubmit" class="w3-button w3-light-green" onclick="return validation()">
                                        </div>
                                    </div>				
				
				
					
					
				
				
					<br> <br> <br> <br>
				

				<table></table>
			
		

	</center>
        
        <% if(request.getParameter("st")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st")%>";
       alert("Pass Registration Successfull...");     
    </script> 
    
<% } %>

    <% if(request.getParameter("st1")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st1")%>";
       alert("Name or Mobile Number already used....");     
    </script> 
    
<% } %>


</form>





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