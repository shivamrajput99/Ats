<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String sourcename=request.getParameter("source");
String sourceid=request.getParameter("sourceid");
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update source set  source_name='"+sourcename+"' where source_id='"+sourceid+"'";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();



response.sendRedirect("sdedit.jsp?st2=Edit success");







%>
