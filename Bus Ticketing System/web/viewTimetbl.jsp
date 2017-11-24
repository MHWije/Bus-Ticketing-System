<%-- 
    Document   : viewTimetbl
    Created on : Nov 23, 2017, 10:59:18 PM
    Author     : HarshaKoshila
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.TimeTable"%>
<%@page import="controllers.TimeTableCtrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <li><a href="Insights.jsp">Insights</a></li>
                    <li><a class="active" href="viewTimetbl.jsp">Time Table</a></li>
                    <li><a href="#profile">Profile</a></li>
                </ul>
            </div>


            <!--Use this area only to do the html codes-->


            <%
                String yr_week = "";
                String day = "";
                TimeTableCtrl ctrl = new TimeTableCtrl();
                TimeTable ob = new TimeTable();
                ArrayList<TimeTable> list = null;

                if (request.getParameter("submit") != null) {
                    yr_week = request.getParameter("myWeek");
                    day = request.getParameter("drpListday");
                    list = ctrl.getTimeTable(yr_week, day);
                }

            %>


            <div name="working-area" style="float:right;width:78%;height:562px">

                <div style="width:1038px; height:100%; margin:0 auto;background-color: #84d372;"> 
                    <br>

                    <style type="text/css">
                        * {margin: 0; padding: 0;}
                        #container {height: 100%; width:100%; font-size:0;}
                        #left, #middle, #right {display: inline-block; *display: inline; zoom: 1; vertical-align: top; font-size: 15px;}
                        #left {width: 5%; background: #84d372;}
                        #middle {width: 35%; background: #84d372;}
                        #right {width: 60%; background: #84d372;}
                    </style>
                    </head>
                    <body>
                        <div id="container">
                            <div id="left"></div>
                            <div id="middle">
                                <br>
                                <form name="myForm" action="viewTimetbl.jsp" method="POST">
                                    <p style="font-size: 17px;"><strong>Select Week :</strong>
                                        <input style="height: 25px;font-size: 15px;" type="week" name="myWeek" required id="myWeek" />
                                    </p>
                                    <br>   
                                    <br>
                                    <p style="font-size: 17px;"><strong> Select Day  :</strong>
                                        <select style="height: 25px;font-size: 15px;" name="drpListday">
                                            <option>Monday</option>
                                            <option>Tuesday</option>
                                            <option>Wednesday</option>
                                            <option>Thursday</option>
                                            <option>Friday</option>
                                            <option>Saturday</option>
                                            <option>Sunday</option>
                                        </select>  </p>
                                    <br>
                                    <br>
                                    <button style="padding: 8px 20px;text-align: center;color: white;background-color: black;font-size: 16px;" type="submit" name="submit">View Time Table</button>
                                </form>

                            </div>
                            <div id="right">  
                                <br>
                                <h1><%= yr_week%></h1><h2><%= day%></h2>
                                <table id="DisplayTable" name="DisplayTable" style="height:auto; width: 490px; border-color: black; float: left;" border="2px">
                                    <tbody>
                                        <tr>
                                            <td style="width: 100px; text-align: center;"><strong>Bus number</strong></td>
                                            <td style="width: 200px; text-align: center;"><strong>Route</strong></td>
                                            <td style="width: 146px; text-align: center;"><strong>Duration</strong></td> 
                                        </tr>
                                        <%
                                            if (list == null) {
                                            } else {
                                                int x = 1;
                                                for (TimeTable tbl : list) {
                                                    x++;
                                                    String busNo = tbl.getBusNo();
                                                    String route = tbl.getRoute();
                                                    String duration = tbl.getDuration();
                                        %>
                                        <tr>
                                            <td style="width: 100px; text-align: center;"><strong><%= busNo%></strong></td>
                                            <td style="width: 200px; text-align: center;"><strong><%= route%></strong></td>
                                            <td style="width: 146px; text-align: center;"><strong><%= duration%></strong></td> 
                                        </tr>
                                        <% }
    }%> 
                                    </tbody>
                                </table>

                            </div>
                        </div>






                        <br>





                </div> 
            </div>
    </body>


</html>
