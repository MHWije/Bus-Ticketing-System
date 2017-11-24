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
public class payment_model {
    
    private int idpayment,account,cardNumber;
    private String date,type;
    private double recharge_amount;

    public payment_model() {
    }

    public payment_model(int idpayment, int account, int cardNumber, String date, String type, double recharge_amount) {
        this.idpayment = idpayment;
        this.account = account;
        this.cardNumber = cardNumber;
        this.date = date;
        this.type = type;
        this.recharge_amount = recharge_amount;
    }

    public int getIdpayment() {
        return idpayment;
    }

    public void setIdpayment(int idpayment) {
        this.idpayment = idpayment;
    }

    public int getAccount() {
        return account;
    }

    public void setAccount(int account) {
        this.account = account;
    }

    public int getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(int cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getRecharge_amount() {
        return recharge_amount;
    }

    public void setRecharge_amount(double recharge_amount) {
        this.recharge_amount = recharge_amount;
    }
    
    
}
