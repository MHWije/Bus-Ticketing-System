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
import models.payment_model;

/**
 *
 * @author mhWiJe
 */
public class payment {

    //connection
    Connection conn;
    PreparedStatement ps=null;
    ResultSet rs=null;

    public payment() {
        conn = MySQLConnection.createConnection();
    }
    
    /**
     * 
     * @param p
     * @return status
     */
    public boolean RechargeAccount(payment_model p){
        boolean status = false;  
        try {
            String insert = "INSERT INTO `payment`(account,date,type,card_number,recharge_amount) "
                    + "VALUES('"+p.getAccount()+"','"+p.getDate()+"','"+p.getType()+"','"+p.getCardNumber()+"','"+p.getRecharge_amount()+"')";
            ps = conn.prepareStatement(insert);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.err.println(e);
        }
        return status;
    }
    
}
