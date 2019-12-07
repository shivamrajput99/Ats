 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
String fname=request.getParameter("fname");


String lname=request.getParameter("lname");
 

String email=request.getParameter("email");
 

String mnumber=request.getParameter("mnumber");
 

String password=request.getParameter("password");
 
String cpassword=request.getParameter("cpassword");
 

        

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();




String query1 = "Select * from account where  account_email='"+email+"' and  	account_number 	='"+mnumber+"'";
out.println(query1);
rs=statement.executeQuery(query1);

if(rs.next())
    {
    response.sendRedirect("register.jsp?st1=Already registered");
     out.println("Email or Mobile Number Already used.");
    }
else
    {
    String query = "insert into account(account_name,account_lname,account_email,account_number,account_password,account_repassword,account_type) values('"+fname+"','"+lname+"','"+email+"','"+mnumber+"','"+password+"','"+cpassword+"','user')";
statement.executeUpdate(query);
response.sendRedirect("register.jsp?st=success");
     out.println("fresh");

}
statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");



%>
