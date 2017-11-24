/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Connection.MySQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author mhWiJe
 */
public class regular_passenger {
    
    //connection
    Connection conn;
    PreparedStatement ps=null;
    ResultSet rs=null;

    /**
     * 
     */
    public regular_passenger() {
        conn = MySQLConnection.createConnection();
    }
    
    /**
     * 
     * @param loginID
     * @return PID
     */
    public int getPassengerID(int loginID){
        int PID = 0;
        try {
            String str="SELECT passenger_id FROM `regular_passenger` WHERE login_id='"+loginID+"'";
            ps=conn.prepareStatement(str);
            rs=ps.executeQuery();
            
            while(rs.next()){
                PID = Integer.parseInt(rs.getString("passenger_id"));
            }
            
        } catch (Exception e) {
            System.err.println(e);
        }
        return PID;
    }
}
