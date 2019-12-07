 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String sourcename=request.getParameter("source");
out.println(sourcename);
    



Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from source where  source_name='"+sourcename+"'";
out.println(query);
rs1=statement.executeQuery(query);


if(rs1.next())
    {
   // response.sendRedirect("addplace.jsp?st=Already registered");
    response.sendRedirect("source.jsp?st1=Already added");
     out.println("source is already");
    }
else
    {
    String query1 = "insert into source(source_name)values('"+sourcename+"')";
statement.executeUpdate(query1);
response.sendRedirect("source.jsp?st2=success");

}



statement.close();
connection.close();


%>
