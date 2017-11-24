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
public class passenger_model {
    
    int idpassenger;
    String first_name,last_name,dob,nic,phone;

    public passenger_model() {
    }

    public passenger_model(int idpassenger, String first_name, String last_name, String dob, String nic, String phone) {
        this.idpassenger = idpassenger;
        this.first_name = first_name;
        this.last_name = last_name;
        this.dob = dob;
        this.nic = nic;
        this.phone = phone;
    }

    public int getIdpassenger() {
        return idpassenger;
    }

    public void setIdpassenger(int idpassenger) {
        this.idpassenger = idpassenger;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
    
}
