 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
String name=request.getParameter("name");
 

String fname=request.getParameter("fname");
 

String dobname=request.getParameter("dobname");
 

String radio=request.getParameter("radio");
 
String aadharno=request.getParameter("aadharno");

String mnumber=request.getParameter("mnumber");

String email=request.getParameter("email");

String sphoto=request.getParameter("sphoto");

String raddress=request.getParameter("raddress");

String pincode=request.getParameter("pincode");

String scname=request.getParameter("scname");

String scaddress=request.getParameter("scaddress");

String pincode2=request.getParameter("pincode2");

String selectpass=request.getParameter("selectpass");

String selectmonth=request.getParameter("selectmonth");

String paymentmode=request.getParameter("paymentmode");

String amountpass=request.getParameter("amountpass");

String collectpass=request.getParameter("collectpass");


        

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();




String query1 = "Select * from passreg where  s_name='"+name+"' and  s_mnumber='"+mnumber+"'";
out.println(query1);
rs=statement.executeQuery(query1);

if(rs.next())
    {
    response.sendRedirect("passreg.jsp?st1=Already registered");
     out.println("Name or Mobile Already used.");
    }
else
    {
    String query = "insert into passreg(s_name,s_fname,s_dob,s_gender,s_aadharno,s_mnumber,s_email,s_photo,r_address,r_pincode,sc_name,sc_address,sc_pincode,pass_type,pass_month,payment_mode,amount_pass,collect_pass) values('"+name+"','"+fname+"','"+dobname+"','"+radio+"','"+aadharno+"','"+mnumber+"','"+email+"','"+sphoto+"','"+raddress+"','"+pincode+"','"+scname+"','"+scaddress+"','"+pincode2+"','"+selectpass+"','"+selectmonth+"','"+paymentmode+"','"+amountpass+"','"+collectpass+"')";
statement.executeUpdate(query);
response.sendRedirect("passreg.jsp?st=success");
     out.println("Success");

}
statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");



%>
