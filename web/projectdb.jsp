<%-- 
    Document   : a
    Created on : Apr 6, 2020, 2:40:39 PM
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
    <body
       
        <% 
           String id=request.getParameter("id");
           String  name=request.getParameter("name");
           String course=request.getParameter("course");
           String email=request.getParameter("email");
           String address=request.getParameter("address");
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum", "root", "neha");
           String s="insert into project values(?,?,?,?,?)";
           PreparedStatement p=cn.prepareStatement(s);
           p.setString(1,id);
           p.setString(2, name);
           p.setString(3, course);
           p.setString(4, email);
           p.setString(5, address);
           
           int i=p.executeUpdate();
           if(i>0)
           {
               response.sendRedirect("welcome.html");
           }
        %>   