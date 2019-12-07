<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String destinationname=request.getParameter("destination");
String destinationid=request.getParameter("destinationid");
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update destination set  destination_name='"+destinationname+"' where destination_id='"+destinationid+"'";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();



response.sendRedirect("sdedit.jsp?st2=Edit success");







%>
