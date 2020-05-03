<%-- 
    Document   : update
    Created on : Apr 8, 2020, 2:30:54 PM
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
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum","root","neha" );
                PreparedStatement p=cn.prepareStatement("select * from project where id="+id+"");
                ResultSet r=p.executeQuery();
                while(r.next())
                {
                    %>  
                        <html>
                            <body>
                                <h1> Update record from DB</h1>
                                
                                <form action="updatedb.jsp">
                                    <input type="hidden" name="id" value="<%=r.getString("id") %>">
                                    <br>
                                    Name:<br>
                                    <input type="text" name="name" value="<%=r.getString("name") %>">
                                    <br>
                                    course:<br>
                                   
                                    <input type="text" name="course" value="<%=r.getString("course") %>">
                                    <br>
                                    Email:<br>
                                    <input type="text" name="email" value="<%=r.getString("email") %>">
                                    <br>
                                    
                                    Address:<br>
                                    <input type="text" name="address" value="<%=r.getString("address") %>">
                                    <br><br>
                                    <input type="submit" value="update">
                                </form>    
                            </body>
                      
                        </html>           
                                    
                                
                                
                    <%
        
        
                 }   
                    
        %>      
        
                              
    </body>
</html>
