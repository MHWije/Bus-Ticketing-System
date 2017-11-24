<%-- 
    Document   : template
    Created on : Nov 20, 2017, 9:26:06 PM
    Author     : mhWiJe
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.TimeTable"%>
<%@page import="controllers.TimeTableCtrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>template</title>
        
        <link rel="stylesheet" type="text/css" href="style.css"> 
        
    </head>
    <body style="margin:0 0 0 0px" onload="displayAdded()">
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
        
             <%   
          String yr_week="";
          String day="";
          String busNo="";
          String route="";
          String duration="";
          ArrayList<TimeTable> list;
          String result="false";
          TimeTableCtrl ctrl=new TimeTableCtrl();
          TimeTable ob=new TimeTable(); 
          if(request.getParameter("submit") != null)
          { 
              list=ctrl.getTimeTable(request.getParameter("myWeek"), request.getParameter("drpListday"));
              
              yr_week=request.getParameter("myWeek");
              day=request.getParameter("drpListday");
              busNo=request.getParameter("busNo");
              route=request.getParameter("route");
              duration=request.getParameter("duration");
              
              ob.setYear_week(yr_week);
              ob.setDay(day);
              ob.setBusNo(busNo);
              ob.setRoute(route);
              ob.setDuration(duration);
              
              ctrl.addTimeTable(ob);
              result="true";
          }

        %>


<script type = "text/javascript">  
    
  function addTable(){ 
    alert('The text will be show!!');
    var busNo=document.getElementById('busNo').value;
    var route=document.getElementById('route').value;
    var duration=document.getElementById('duration').value; 
    
    var table = document.getElementById("DisplayTable");
    
    var row = table.insertRow(1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2); 
    cell1.innerHTML = busNo;
    cell2.innerHTML = route;
    cell3.innerHTML = duration; 
    }
    
    function clearTable()
    {
        var table = document.getElementById("DisplayTable"); 
        table.deleteRow(1); 
        
    }
    
    function displayAdded()
    {
        if(document.myForm.hidden.value==="true")
            alert("Data inserted");  
    }
    
  
</script>
            
            
            
        <!--Use this area only to do the html codes-->
            
        <div name="working-area" style="float:right;width:78%;height:562px"> 
            <div style="width:1038px; height:100%; margin:0 auto;background-color: #84d372;">
                <br>
                
                
    <form name="myForm" action="admin_TimeTbl.jsp" method="POST">
            <strong>Select Week :</strong>
            <input type="week" name="myWeek" required id="myWeek" />
            
            <div style="text-align:left;" >
            <div name="LeftDiv" style="border:1px solid #000;width:500px;height:200px; display:inline-block;">
            <br>    
               <strong> Select Day  :</strong>
            <select name="drpListday">
                <option>Monday</option>
                <option>Tuesday</option>
                <option>Wednesday</option>
                <option>Thursday</option>
                <option>Friday</option>
                <option>Saturday</option>
                <option>Sunday</option>
            </select>
                 <br>
                <table style="height: 157px; width: 407px;">
<tbody>
<tr>
<td style="width: 30px;">&nbsp;</td>
<td style="width: 113px;"><strong>Bus number</strong></td>
<td style="width: 208px;"><input type="text" id="busNo" name="busNo" value=""/>&nbsp;</td>
<td style="width: 40px;">&nbsp;</td>
</tr>
<tr>
<td style="width: 30px;">&nbsp;</td>
<td style="width: 113px;"><strong>Route</strong></td>
<td style="width: 208px;"><input type="text" id="route" name="route" value="" />&nbsp;</td>
<td style="width: 40px;">&nbsp;</td>
</tr>
<tr>
<td style="width: 30px;">&nbsp;</td>
<td style="width: 113px;"><strong>Duration</strong></td>
<td style="width: 208px;"><input type="text" id="duration" name="duration" value="" />&nbsp;</td>
<td style="width: 40px;">&nbsp;</td>
</tr>
<tr>
<td style="width: 30px;">&nbsp;</td>
<td style="width: 113px;">&nbsp;</td>
<td style="width: 208px;"><button type="submit" name="submit" >Add</button>&nbsp;</td>
<td style="width: 40px;"><input type="hidden" name="hidden" value="<%=result%>">&nbsp;</td>
</tr>
</tbody>
</table> 
 
 </form>
            </div> 
              
            </div>  
            
            </div> 
        </div> 
         
        
        
       
        
        </div>
    </body>
</html>
