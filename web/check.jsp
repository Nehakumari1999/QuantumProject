<%-- 
    Document   : check
    Created on : Apr 9, 2020, 10:56:45 AM
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
           String fname=request.getParameter("fname");
           String  lname=request.getParameter("lname");
           String email=request.getParameter("email");
           String userid=request.getParameter("userid");
           String password=request.getParameter("password");
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum","root","neha");
           Statement st=cn.createStatement();
           String s="select COUNT(*) from email where email="+email+" ";
           ResultSet r=st.executeQuery(s);
           
           while(r.next());
           {
           String count=r.getString(1);
           out.println(count);
           if(count.equals("0"))
           {
               int i=st.executeUpdate("insert into email(fname,lname,email,userid,password)"
                       + "values('"+fname+"' ,'"+lname+"','"+email+"' ,'"+userid+"' ,'"+password+"')");
           }
           else
           {
               out.println("Your email id already exists!!!!!");
           } 
        
           }
        %>
        
        
    </body>
</html>
