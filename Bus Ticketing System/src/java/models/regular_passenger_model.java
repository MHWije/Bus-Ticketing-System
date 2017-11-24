package models;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mhWiJe
 */
public class regular_passenger_model {
    int idregular_passenger,passenger_id,login_id;
    String city;

    public regular_passenger_model() {
    }

    public regular_passenger_model(int idregular_passenger, int passenger_id, int login_id, String city) {
        this.idregular_passenger = idregular_passenger;
        this.passenger_id = passenger_id;
        this.login_id = login_id;
        this.city = city;
    }

    public int getIdregular_passenger() {
        return idregular_passenger;
    }

    public void setIdregular_passenger(int idregular_passenger) {
        this.idregular_passenger = idregular_passenger;
    }

    public int getPassenger_id() {
        return passenger_id;
    }

    public void setPassenger_id(int passenger_id) {
        this.passenger_id = passenger_id;
    }

    public int getLogin_id() {
        return login_id;
    }

    public void setLogin_id(int login_id) {
        this.login_id = login_id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
    
    
    
}
