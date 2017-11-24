/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author mhWiJe
 */
public class account_model {
    
    private int idaccount,regular_token;
    private double balance;
    private String date;

    public account_model() {
    }

    public account_model(int idaccount, int regular_token, double balance, String date) {
        this.idaccount = idaccount;
        this.regular_token = regular_token;
        this.balance = balance;
        this.date = date;
    }

    public int getIdaccount() {
        return idaccount;
    }

    public void setIdaccount(int idaccount) {
        this.idaccount = idaccount;
    }

    public int getRegular_token() {
        return regular_token;
    }

    public void setRegular_token(int regular_token) {
        this.regular_token = regular_token;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
    
}
