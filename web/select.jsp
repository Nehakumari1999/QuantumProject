<%-- 
    Document   : select.jsp
    Created on : Apr 7, 2020, 7:21:38 PM
    Author     : Neha
--%>
<%@page import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>COURSE</td>
                <td>EMAIL</td>
                <td>ADDRESS</td>
                <td>ID</td>
            </tr>
            <% 
                String id=request.getParameter("id");
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum","root","neha" );
                PreparedStatement p=cn.prepareStatement("select * from project");
                ResultSet r=p.executeQuery();
                while(r.next())
                {
                    %>
                    <tr>
                        <td><%= r.getString("id") %></td>
                        <td><%= r.getString("name") %></td>
                        <td><%= r.getString("course") %></td>
                        <td><%= r.getString("email") %></td>
                        <td><%= r.getString("address") %></td>
                    </tr>
                    <%
                }
                
            %>
            
        </table>
        
    </body>
</html>
