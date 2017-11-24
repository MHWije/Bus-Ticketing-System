package controllers;

import Connection.MySQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.TimeTable;
import models.User;

/**
 *
 * @author HarshaKoshila
 */
public class TimeTableCtrl {

    Connection con;
    PreparedStatement ps = null;
    ResultSet rs = null;

    /**
     * Default constructor
     */
    public TimeTableCtrl() {
        con = MySQLConnection.createConnection();
    }

    /**
     *  //adding Time table details
     *
     * @param ob
     * @return
     */
    public boolean addTimeTable(TimeTable ob) {
        boolean status = false;
        try {
            String add = "INSERT INTO `time_table`(`year_week`, `day`, `bus_number`, `route`, `duration`) VALUES ('" + ob.getYear_week() + "','" + ob.getDay() + "','" + ob.getBusNo() + "','" + ob.getRoute() + "','" + ob.getDuration() + "')";
            ps = con.prepareStatement(add);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    /**
     * //updating Time table details
     *
     * @param ob
     * @return
     */
    public boolean updateTimeTable(TimeTable ob) {
        boolean status = false;
        try {
            String add = "UPDATE `time_table` SET `year_week`='" + ob.getYear_week() + "',`day`='" + ob.getDay() + "', `bus_number`='" + ob.getBusNo() + "',`route`='" + ob.getRoute() + "',`duration`='" + ob.getDuration() + "' WHERE `ID`=" + ob.getID();
            ps = con.prepareStatement(add);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    /**
     * Delete TimeTable
     *
     * @param id
     * @return
     */
    public boolean deleteTimeTable(int id) {
        boolean status = false;
        try {
            String str = "DELETE FROM `time_table` WHERE `ID`=" + id + " ";
            ps = con.prepareStatement(str);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    /**
     * //TimeTable Details
     *
     * @param yr_week
     * @param day
     * @return
     */
    public ArrayList<TimeTable> getTimeTable(String yr_week, String day) {
        ArrayList<TimeTable> list = new ArrayList<TimeTable>();
        try {
            String str = "SELECT `ID`,`year_week`, `day`,`bus_number`, `route`, `duration` FROM `time_table` WHERE `year_week`='" + yr_week + "' and `day`='" + day + "'";
            ps = con.prepareStatement(str);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new TimeTable(Integer.parseInt(rs.getString("ID")), rs.getString("year_week"), rs.getString("day"), rs.getString("bus_number"), rs.getString("route"), rs.getString("duration")));
            }
        } catch (Exception e) {
        }
        return list;
    }

}
