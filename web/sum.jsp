<%-- 
    Document   : sum
    Created on : Apr 9, 2020, 10:28:15 AM
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
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum","root","neha");
        Statement s=cn.createStatement();
        String st="select SUM(salary) from emp";
        ResultSet r=s.executeQuery(st);
        String ct="";
        while(r.next())
        {   ct=r.getString(1);
            out.println("Total salary="+ct);
            
        }
        %>
    </body>
</html>
