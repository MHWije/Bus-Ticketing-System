<%-- 
    Document   : template
    Created on : Nov 20, 2017, 9:26:06 PM
    Author     : mhWiJe
--%>

<%@page import="controllers.passenger"%>
<%@page import="controllers.regular_passenger"%>
<%@page import="controllers.account"%>
<%@page import="models.account_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Balance</title>
        
        <link rel="stylesheet" type="text/css" href="style.css">
        
    </head>
    <body style="margin:0 0 0 0px">
        <div name="Header" style="background-color: #006600;height:100px">
            <img style="float:left;margin-left: 35px" src="bus.png" width="90" height="100"/>
            <h1 style="float:left;margin-left: 30px;font-size: 35px;">Bus Ticketing System</h1>
            <div name="profile-logo" style="float:right;margin-top: 15px;margin-right: 5px">
                <img src="profile-logo.png" width="70px" height="70px"/>
            </div>
            <div name="logout" style="float:right;margin-top:30px;margin-right: 8px">
                <input class="button" type="button" value="Logout" name="logout" />
            </div>
        </div>
        <div>
        <div style="width:22%;height:562px;background-color: #006600;float: left">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="Recharge.jsp">Recharge</a></li>
                <li><a class="active" href="Balance.jsp">Balance</a></li>
            </ul>
        </div>
        
            <%
        
        
        account_model acc = new account_model();
        account a = new account();
        regular_passenger rp = new regular_passenger();
        passenger p = new passenger();

        acc = a.accountRecord(Integer.parseInt(session.getAttribute("idLogin").toString()));
        
        int token_number = acc.getRegular_token();
        double balance = acc.getBalance();

        
        int PID = rp.getPassengerID(Integer.parseInt(session.getAttribute("idLogin").toString()));
        String name = p.PassengerName(PID);
        %>
            
        <!--Use this area only to do the html codes-->
            
        <div name="working-area" style="float:right;width:78%;height:562px;background-color: #84d372">
            <div style="margin-left: 250px;margin-top: 100px">
                <h1>Account Summary</h1
                <br/><br/><br/>
                <form name="recharge_account" action="Recharge.jsp" method="POST">
                    <table border="0" cellspacing="5">
                        <tbody>
                            <tr>
                                <td>Token Number</td>
                                <td>:</td>
                                <td><input type="text" name="token_id" value="<%=token_number %>" size="30" readonly/></td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td><input type="text" name="balance" value="<%=name %>" size="30" readonly/></td>
                            </tr>
                            <tr>
                                <td>Balance</td>
                                <td>:</td>
                                <td><input type="text" name="date" value="<%=balance %>" size="30" readonly/></td>
                            </tr>
                        </tbody>
                    </table>

                    
            
            
            
                </form>
            </div>
        </div>
        
        <!--Use this area only to do the html codes-->
        
        
        
        </div>
    </body>
</html>
