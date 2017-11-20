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
import java.sql.SQLException;
import models.account_model;

/**
 *
 * @author mhWiJe
 */
public class account {
    
    //connection
    Connection conn;
    PreparedStatement ps=null;
    ResultSet rs=null;

    public account() {
        conn = MySQLConnection.createConnection();
    }
    
    
    //retrieve room table records
    public ResultSet accountRecords()
    {
        try {
            String str="SELECT * FROM `account`";
            ps=conn.prepareStatement(str);
            rs=ps.executeQuery();
        } catch (Exception e) {
            System.err.println(e);
        }
        return rs;
    }
    
    //Add Room details 
    public boolean addAccount(account_model a){
        boolean status = false;  
        try {
            String insert = "INSERT INTO `account`(regular_token,balance,created_date) "
                    + "VALUES('"+a.getRegular_token()+"','"+a.getBalance()+"','"+a.getDate()+"')";
            ps = conn.prepareStatement(insert);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.err.println(e);
        }
        return status;
    }
    
    
}
