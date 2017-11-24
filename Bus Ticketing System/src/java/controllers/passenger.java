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
public class passenger {
    
    //connection
    Connection conn;
    PreparedStatement ps=null;
    ResultSet rs=null;

    /**
     * 
     */
    public passenger() {
        conn = MySQLConnection.createConnection();
    }
    
    /**
     * 
     * @param PID
     * @return name
     */
    public String PassengerName(int PID){
        String name="";
        try {
            String str="SELECT first_name,last_name FROM `passenger` WHERE idpassenger='"+PID+"'";
            ps=conn.prepareStatement(str);
            rs=ps.executeQuery();
            
            while(rs.next()){
                name = rs.getString("first_name")+" "+rs.getString("last_name");
            }
            
        } catch (Exception e) {
            System.err.println(e);
        }
        return name;
    }
    
}
