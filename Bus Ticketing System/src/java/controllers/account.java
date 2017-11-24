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
    
    
    /**
     * 
     * @param id
     * @return account_model object
     */
    public account_model accountRecord(int id)
    {
        account_model a = new account_model();
        try {
            String str="SELECT * FROM `account` WHERE idaccount='"+id+"'";
            ps=conn.prepareStatement(str);
            rs=ps.executeQuery();
            
            while(rs.next()){
                a.setRegular_token(Integer.parseInt(rs.getString("regular_token")));
                a.setBalance(Double.parseDouble(rs.getString("balance")));
            }
            
        } catch (Exception e) {
            System.err.println(e);
        }
        return a;
    }
    
    /**
     * 
     * @param a
     * @return status 
     */
    public boolean RechargeAccount(account_model a){
        boolean status = false;  
        try {
            String insert = "UPDATE `account` SET balance='"+a.getBalance()+"'"
                    + "WHERE regular_token='"+a.getRegular_token()+"'";
            ps = conn.prepareStatement(insert);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.err.println(e);
        }
        return status;
    }
    
    
}
