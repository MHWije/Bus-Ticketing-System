<%-- 
    Document   : template
    Created on : Nov 20, 2017, 9:26:06 PM
    Author     : mhWiJe
--%>

<%@page import="models.payment_model"%>
<%@page import="controllers.payment"%>
<%@page import="java.util.Date"%>
<%@page import="controllers.passenger"%>
<%@page import="controllers.regular_passenger"%>
<%@page import="controllers.account"%>
<%@page import="models.account_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recharge Account</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        
        <script>
            function logout(){
                <% 
                    if(request.getParameter("logout") != null) {
                        session.setAttribute("idLogin", 0);
                    session.setAttribute("username", 0);
                    response.sendRedirect("Login.jsp");
                    }
                %>
            }
            
        </script>

    </head>
    <body style="margin:0 0 0 0px">
        <div name="Header" style="background-color: #006600;height:100px">
            <img style="float:left;margin-left: 35px" src="bus.png" width="90" height="100"/>
            <h1 style="float:left;margin-left: 30px;font-size: 35px;">Bus Ticketing System</h1>
            <div name="profile-logo" style="float:right;margin-top: 15px;margin-right: 5px">
                <img src="profile-logo.png" width="70px" height="70px"/>
            </div>
            <div name="logout" style="float:right;margin-top:30px;margin-right: 8px">
                <form name="logout" action="Balance.jsp" method="POST">
                    <input class="button" type="submit" value="Logout" name="logout" onclick="logout()"/>
                </form>
            </div>
        </div>
        <div>
            <div style="width:22%;height:562px;background-color: #006600;float: left">
                <ul>
                    <li><a href="Balance.jsp">Balance</a></li>
                    <li><a class="active" href="Recharge.jsp">Recharge</a></li>
                    <li><a href="#profile">Profile</a></li>
                </ul>
            </div>


            <!--Use this area only to do the html codes-->

            <%

                account_model acc = new account_model();
                account a = new account();
                regular_passenger rp = new regular_passenger();
                passenger p = new passenger();
                payment pay = new payment();
                payment_model pmodel = new payment_model();

                acc = a.accountRecord(Integer.parseInt(session.getAttribute("idLogin").toString()));

                int token_number = acc.getRegular_token();
                double balance = acc.getBalance();

                int PID = rp.getPassengerID(Integer.parseInt(session.getAttribute("idLogin").toString()));
                String name = p.PassengerName(PID);

                Date date = new Date();

                if (request.getParameter("submit") != null) {

                    acc.setRegular_token(token_number);
                    acc.setBalance(Double.parseDouble(request.getParameter("amount")) + balance);
                    a.RechargeAccount(acc);

                    pmodel.setAccount(token_number);
                    pmodel.setDate(date.toString());
                    pmodel.setType("regular_token");
                    pmodel.setCardNumber(Integer.parseInt(request.getParameter("card")));
                    pmodel.setRecharge_amount(Double.parseDouble(request.getParameter("amount")));

                    pay.RechargeAccount(pmodel);
                }


            %>

            <div name="working-area" style="float:right;width:78%;height:562px;background-color: #84d372">

                <div style="margin-left: 250px;margin-top: 100px">
                    <h1>Recharge your account</h1
                    <br/><br/><br/>
                    <form name="recharge_account" action="Recharge.jsp" method="POST">
                        <table border="0" cellspacing="5">
                            <tbody>
                                <tr>
                                    <td>Token Number</td>
                                    <td>:</td>
                                    <td><input type="text" name="token_id" value="<%=token_number%>" size="30" readonly/></td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td><input type="text" name="name" value="<%=name%>" size="30" /></td>
                                </tr
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Recharge Amount (Rs)</td>
                                    <td>:</td>
                                    <td><input type="text" name="amount" value="" size="30" required/></td>
                                </tr>
                                <tr>
                                    <td>Card Number</td>
                                    <td>:</td>
                                    <td><input type="text" name="card" value="" size="30" required/></td>
                                </tr>
                                <tr>
                                    <td>Bank</td>
                                    <td>:</td>
                                    <td><select name="bank" required>
                                            <option value="">Select</option>
                                            <option value="combank">Commercial Bank</option>
                                            <option value="seylan">Seylan</option>
                                            <option value="hnb">HNB</option>
                                            <option value="dfcc">DFCC</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <input type="submit" value="Submit" name="submit" style="float:right;margin-left: 10px" />
                                        <input type="reset" value="Reset" name="reset" style="float:right"/>
                                    </td>
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
