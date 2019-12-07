<%-- 
    Document   : complaintprocess
    Created on : Mar 11, 2019, 6:44:54 PM
    Author     : dhaval Patel
--%>
 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<% 

String cname=request.getParameter("name");
out.println(cname);

String cemail=request.getParameter("email");
out.println(cemail);

String cnumber=request.getParameter("number");
out.println(cnumber);

String messagee=request.getParameter("messagee");
out.println(messagee);

 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from  message where  user_message='"+messagee+"'";
out.println(query);
rs1=statement.executeQuery(query);

if(rs1.next())
    {
    response.sendRedirect("contact.jsp?st1=Already registered");
     out.println("Already Registered");
    
   // response.sendRedirect("addplace.jsp?st=Already registered");
 
    }
else
    {
    String query1 = "insert into message(user_name,user_email,user_number,user_message)values('"+cname+"','"+cemail+"','"+cnumber+"','"+messagee+"')";
//out.println(query1);
    statement.executeUpdate(query1);
response.sendRedirect("contact.jsp?st2=success");
 
}



%>
