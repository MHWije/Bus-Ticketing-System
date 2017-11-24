<%-- 
    Document   : newTimetbl
    Created on : Nov 24, 2017, 2:06:18 AM
    Author     : HarshaKoshila
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="controllers.TimeTableCtrl"%>
<%@page import="models.TimeTable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"> 
        <title>JSP Page</title>
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
                    <li><a class="active" href="#home">Home</a></li>
                    <li><a href="#insights">Insights</a></li>
                    <li><a href="#timetable">Time Table</a></li>
                    <li><a href="#profile">Profile</a></li>
                </ul>
            </div>


            <!--Use this area only to do the html codes-->


            <%
                int ID = 0;
                String yr_week = "";
                String day = "";
                String busNo = "";
                String route = "";
                String duration = "";

                TimeTableCtrl ctrl = new TimeTableCtrl();
                TimeTable ob = new TimeTable();
                ArrayList<TimeTable> list = null;

                if (request.getParameter("submit") != null) {

                    yr_week = request.getParameter("myWeek");
                    day = request.getParameter("drpListday");
                    busNo = request.getParameter("busNo");
                    route = request.getParameter("route");
                    duration = request.getParameter("duration");

                    ob.setID(ID);
                    ob.setYear_week(yr_week);
                    ob.setDay(day);
                    ob.setBusNo(busNo);
                    ob.setRoute(route);
                    ob.setDuration(duration);

                    ctrl.addTimeTable(ob);
                    list = ctrl.getTimeTable(yr_week, day);

                }

                if (request.getParameter("update") != null) {
                    ID = Integer.parseInt(request.getParameter("ID"));
                    yr_week = request.getParameter("myWeek");
                    day = request.getParameter("drpListday");
                    busNo = request.getParameter("busNo");
                    route = request.getParameter("route");
                    duration = request.getParameter("duration");

                    ob.setID(ID);
                    ob.setYear_week(yr_week);
                    ob.setDay(day);
                    ob.setBusNo(busNo);
                    ob.setRoute(route);
                    ob.setDuration(duration);

                    boolean st = ctrl.updateTimeTable(ob);
                    list = ctrl.getTimeTable(yr_week, day);
                    System.out.println("UPDATE  :" + st);
                    System.out.println("YR   :" + yr_week);
                    System.out.println(ID);
                }

                if (request.getParameter("delete") != null) {
                    ID = Integer.parseInt(request.getParameter("ID"));
                    yr_week = request.getParameter("myWeek");
                    day = request.getParameter("drpListday");
                    boolean st = ctrl.deleteTimeTable(ID);
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
                                <form name="myForm" action="newTimetbl.jsp" method="POST">
                                    <p style="font-size: 17px;"><strong>Select Week :</strong>
                                        <input style="height: 25px;font-size: 15px;" type="week" name="myWeek" id="myWeek" />
                                    </p>
                                    <br>   
                                    <br>
                                    <p style="font-size: 17px;"><strong> Select Day  :</strong>
                                        <select style="height: 25px;font-size: 15px;" name="drpListday" id="drpListday">
                                            <option>Monday</option>
                                            <option>Tuesday</option>
                                            <option>Wednesday</option>
                                            <option>Thursday</option>
                                            <option>Friday</option>
                                            <option>Saturday</option>
                                            <option>Sunday</option>
                                        </select>  </p>
                                    <br> 
                                    <input type="text" id="ID" name="ID" value="" style="display: none"/>
                                    <table style="height: 157px;">
                                        <tbody>
                                            <tr>
                                                <td style="width: 30px;">&nbsp;</td>
                                                <td style="width: 113px;"><strong>Bus number</strong></td>
                                                <td style="width: 208px;"><input style="font-size: 17px;" type="text" id="busNo" name="busNo" value=""/>&nbsp;</td>
                                                <td style="width: 40px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;">&nbsp;</td>
                                                <td style="width: 113px;"><strong>Route</strong></td>
                                                <td style="width: 208px;"><input style="font-size: 17px;" type="text" id="route" name="route" value="" />&nbsp;</td>
                                                <td style="width: 40px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;">&nbsp;</td>
                                                <td style="width: 113px;"><strong>Duration</strong></td>
                                                <td style="width: 208px;"><input style="font-size: 17px;" type="text" id="duration" name="duration" value="" />&nbsp;</td>
                                                <td style="width: 40px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;">&nbsp;</td>
                                                <td style="width: 113px;">&nbsp;</td>
                                                <td style="width: 208px;"> </td>
                                                <td style="width: 40px;"> </td>
                                            </tr>
                                        </tbody>
                                    </table> 
                                    <button style="padding: 8px 20px;text-align: center;color: white;background-color: black;font-size: 16px;" type="submit" name="submit">Add Time Table</button>
                                    <button style="padding: 8px 20px;text-align: center;color: white;background-color: black;font-size: 16px;" type="submit" name="update" id="update">Update</button>
                                    <button style="padding: 8px 20px;text-align: center;color: white;background-color: black;font-size: 16px;" type="submit" name="delete" id="delete">Delete</button>

                                </form>

                            </div>
                            <div id="right">  
                                <br>
                                <h1 id="yrH"><%= yr_week%></h1><h2 id="dayH"><%= day%></h2>
                                <style>
                                    table tr:not(:first-child){
                                        cursor: pointer;transition: all .25s ease-in-out;
                                    }
                                    table tr:not(:first-child):hover{background-color: #ddd;}
                                </style>
                                <table id="table" style="height:auto; width: 490px; border-color: black; float: left;" border="2px">
                                    <tbody>
                                        <tr>
                                            <td style="width: 50px; text-align: center;"><strong>ID</strong></td>
                                            <td style="width: 100px; text-align: center;"><strong>Bus number</strong></td>
                                            <td style="width: 200px; text-align: center;"><strong>Route</strong></td>
                                            <td style="width: 200px; text-align: center;"><strong>Duration</strong></td> 
                                        </tr> 
                                        <%
                                            if (list == null) {
                                            } else {
                                                for (TimeTable tbl : list) {
                                                    ID = tbl.getID();
                                                    busNo = tbl.getBusNo();
                                                    route = tbl.getRoute();
                                                    duration = tbl.getDuration();
                                        %>
                                        <tr>
                                            <td style="width: 50px; text-align: center;font-size: 17px;"><%= ID%></td>
                                            <td style="width: 100px; text-align: center;font-size: 17px;"><%= busNo%></td>
                                            <td style="width: 200px; text-align: center;font-size: 17px;"><%= route%></td>
                                            <td style="width: 200px; text-align: center;font-size: 17px;"><%= duration%></td>  
                                        </tr>
                                        <% }
    }%> 
                                    </tbody>
                                </table> 
                                <script>

                                    // get selected row
                                    // display selected row data in text input

                                    var table = document.getElementById("table"), rIndex;

                                    for (var i = 1; i < table.rows.length; i++)
                                    {
                                        table.rows[i].onclick = function ()
                                        {
                                            rIndex = this.rowIndex;
                                            console.log(rIndex);

                                            document.getElementById("ID").value = this.cells[0].innerHTML;
                                            document.getElementById("busNo").value = this.cells[1].innerHTML;
                                            document.getElementById("route").value = this.cells[2].innerHTML;
                                            document.getElementById("duration").value = this.cells[3].innerHTML;
                                            document.getElementById("myWeek").value = document.getElementById("yrH").innerHTML;
                                            document.getElementById("drpListday").value = document.getElementById("dayH").innerHTML;
                                        };
                                    }


                                    // edit the row
                                    function editRow()
                                    {
                                        table.rows[rIndex].cells[0].innerHTML = document.getElementById("fname").value;
                                        table.rows[rIndex].cells[1].innerHTML = document.getElementById("lname").value;
                                        table.rows[rIndex].cells[2].innerHTML = document.getElementById("age").value;
                                    }

                                </script> 
                            </div>
                        </div>

                        <br>

                </div> 
            </div>
</html>
