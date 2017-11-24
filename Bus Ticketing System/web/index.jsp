<%-- 
    Document   : index
    Created on : Nov 19, 2017, 5:24:00 AM
    Author     : HarshaKoshila
--%>
<%@page import="models.User"%>
<%@page import="controllers.UserCtrl"%> 
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%> 
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Company</title>
    </head>
    <body>
        <h1 name="h1">Hello World!</h1>
        
        <%
            User usr=new User();
            UserCtrl usrCtrl=new UserCtrl();
            if(request.getParameter("submit") != null)
            {
                usr.setId(Integer.parseInt(request.getParameter("id")));
                usr.setName(request.getParameter("name"));
                usr.setPassword(request.getParameter("pwd"));
                
                usrCtrl.addUser(usr);
                response.setHeader("h1","HAAAAAAAAAAAAAA");
            }
            
            System.out.println("HHHHHHH :"+session.getAttribute("username"));
             
 
        %> 
        <p>User name :<%=session.getAttribute("username")%></p>
        
        <form action="index.jsp" method="POST">
            
            <input type="text" name="id" value="" size="50" />
            <input type="text" name="name" value="" size="50" />
            <input type="text" name="pwd" value="" size="50" />
            
            <input type="submit" value="Submit" name="submit" />
        </form>
        
        
        
    </body>
</html>
