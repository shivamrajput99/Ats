
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>

<%
String sourceid=request.getParameter("sourceid");
String query="delete from source where source_id='"+sourceid+"'";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();
response.sendRedirect("sddelete.jsp?delete=1");
%>