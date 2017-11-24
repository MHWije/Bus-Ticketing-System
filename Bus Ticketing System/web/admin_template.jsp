<%-- 
    Document   : template
    Created on : Nov 20, 2017, 9:26:06 PM
    Author     : mhWiJe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>template</title>
        
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
                <li><a class="active" href="#home">Home</a></li>
                <li><a href="#insights">Insights</a></li>
                <li><a href="#timetable">Time Table</a></li>
                <li><a href="#profile">Profile</a></li>
            </ul>
        </div>
        
            
        <!--Use this area only to do the html codes-->
            
        <div name="working-area" style="float:right;width:78%;height:562px">
            
        </div>
        
        
        <!--Use this area only to do the html codes-->
        
        
        </div>
    </body>
</html>
