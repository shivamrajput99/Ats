 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%

String SelectSource=request.getParameter("source");
out.println(SelectSource);

String SelectDestination=request.getParameter("destination");
out.println(SelectDestination);


String RouteNumber=request.getParameter("rnumber");
out.println(RouteNumber);


Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from route where  route_id='"+RouteNumber+"'";
out.println(query);
rs1=statement.executeQuery(query);


if(rs1.next())
    {
   response.sendRedirect("addroute.jsp?st1=Already registered");
     out.println("Route is already");
    }
else
    {
    String query1 = "insert into route(source_id,destination_id,route_name)values('"+SelectSource+"','"+SelectDestination+"','"+RouteNumber+"')";
statement.executeUpdate(query1);
response.sendRedirect("addroute.jsp?st2=success");

}



statement.close();
connection.close();


%>
