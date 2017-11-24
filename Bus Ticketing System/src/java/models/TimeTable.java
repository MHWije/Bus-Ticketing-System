 
package models;

/**
 *
 * @author HarshaKoshila
 */
public class TimeTable {
    
    private int ID;
    private String year_week;  
    private String day;
    private String busNo;
    private String route;
    private String duration;

    public TimeTable() {
    }

    public TimeTable(int ID,String year_week, String day,String busNo, String route, String duration) {
        this.ID = ID;
        this.year_week = year_week;
        this.day = day;
        this.busNo = busNo;
        this.route = route;
        this.duration = duration;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    } 
    
    public String getDay() {
        return day;
    }

    public String getYear_week() {
        return year_week;
    }

    public void setYear_week(String year_week) {
        this.year_week = year_week;
    }

    public void setDay(String day) {
        this.day = day;
    } 

    public String getBusNo() {
        return busNo;
    }

    public void setBusNo(String busNo) {
        this.busNo = busNo;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
    
    
    
    
}
