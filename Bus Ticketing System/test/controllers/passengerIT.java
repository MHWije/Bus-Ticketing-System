/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author mhWiJe
 */
public class passengerIT {
    
    public passengerIT() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of PassengerName method, of class passenger.
     * when PID is 0, no result
     */
    @Test
    public void testPassengerName() {
        System.out.println("PassengerName");
        int PID = 0;
        passenger instance = new passenger();
        String expResult = "";
        String result = instance.PassengerName(PID);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of PassengerName method, of class passenger.
     * When PID is 1, result should be Mihiran Hasalanka
     */
    @Test
    public void testPassengerName1() {
        System.out.println("PassengerName");
        int PID = 1;
        passenger instance = new passenger();
        String expResult = "Mihiran Hasalanka";
        String result = instance.PassengerName(PID);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of PassengerName method, of class passenger.
     * When there is no value to return for given PID, it returns null 
     */
    @Test
    public void testPassengerName2() {
        System.out.println("PassengerName");
        int PID = -1;
        passenger instance = new passenger();
        String expResult = "";
        String result = instance.PassengerName(PID);
        assertEquals(expResult, result);
    }
    
}
