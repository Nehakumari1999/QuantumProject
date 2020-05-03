<%-- 
    Document   : delete
    Created on : Apr 7, 2020, 11:31:51 PM
    Author     : Neha
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");
        Connection  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum","root","neha");
        PreparedStatement p=cn.prepareStatement("delete from project where id="+id+"");
        int i=p.executeUpdate();
        if(i>0)
        {
            out.println("Deletion SucessFully");
        }
        %>
    </body>
</html>
