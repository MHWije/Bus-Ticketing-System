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
public class regular_passengerIT {
    
    public regular_passengerIT() {
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
     * Test of getPassengerID method, of class regular_passenger.
     * If no loginID given, PassengerID will be 0
     */
    @Test
    public void testGetPassengerID() {
        System.out.println("getPassengerID");
        int loginID = 0;
        regular_passenger instance = new regular_passenger();
        int expResult = 0;
        int result = instance.getPassengerID(loginID);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of getPassengerID method, of class regular_passenger.
     * For LoginID 1, result will be 1.
     */
    @Test
    public void testGetPassengerID1() {
        System.out.println("getPassengerID");
        int loginID = 1;
        regular_passenger instance = new regular_passenger();
        int expResult = 1;
        int result = instance.getPassengerID(loginID);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of getPassengerID method, of class regular_passenger.
     * For LoginID 1, expResult will be 1.But if result will be 2, Test fails
     */
    @Test
    public void testGetPassengerID2() {
        System.out.println("getPassengerID");
        int loginID = 1;
        regular_passenger instance = new regular_passenger();
        int expResult = 1;
        int result = instance.getPassengerID(loginID);
        result = 2;
        assertEquals(expResult, result);
    }
    
}
