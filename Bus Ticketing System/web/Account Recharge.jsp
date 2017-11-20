<%-- 
    Document   : Account Recharge
    Created on : Nov 19, 2017, 7:39:27 PM
    Author     : mhWiJe
--%>

<%@page import="controllers.account"%>
<%@page import="models.account_model"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Recharge</title>
    </head>
    
    <%
        
        if(request.getParameter("submit") != null){
        account_model acc = new account_model();
        account a = new account();

        acc.setRegular_token(Integer.parseInt(request.getParameter("token_id")));
        acc.setBalance(Double.parseDouble(request.getParameter("balance")));
        acc.setDate(request.getParameter("date"));
        a.addAccount(acc);
        }
        %>
    
    
    <body>
        <h1>Recharge your account</h1>
        <form name="recharge_account" action="Account Recharge.jsp" method="POST">
            <input type="text" name="token_id" value="" size="50" />
            <input type="text" name="balance" value="" size="50" />
            <input type="text" name="date" value="" size="50" />
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>
