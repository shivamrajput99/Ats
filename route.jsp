
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;



  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);

       
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Route</title>
    </head>
    <body>
         <% 
            if(request.getParameter("source")!=null)
                {
            String st=request.getParameter("source");
           
             String st3=request.getParameter("destination");
             
          
            // String st4=request.getParameter("placeid");
            //out.println("parth");
           // out.println(st4);
             //String st5=request.getParameter("pname");
             
              
              
          
            %>
            
               <%
Statement statement2 = null;

ResultSet rs2 = null;

statement2= connection.createStatement();  

               String sql="select * from route  where route.destination_id='"+st3+"'  and route.source_id='"+st+"'";
                 //out.println(sql);
               rs2=statement2.executeQuery(sql);
             while(rs2.next())
              {
               %>             

     <div class="container">
                <div class="row-fluid">
                    <div class="span6">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="featured-block">
                                 
 <center>
                         <table>

  <tr> <h1 align="center"><b><% out.println(rs2.getString("route_name"));%></b></h1>
  </tr>
 
              
                              </table>
                              &nbsp;&nbsp;
                              
                              
                              </center>               
                                </div>
                        </div>
                    </div>
                </div>
            </div>
                 <%
                
             }
               }
               
                  
               %>
                
                
                

    </body>
</html>
