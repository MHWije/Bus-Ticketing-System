/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import models.account_model;
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
public class accountIT {
    
    public accountIT() {
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
     * Test of accountRecord method, of class account.
     * Testing for 2 different objects
     */
    @Test
    public void testAccountRecord() {
        System.out.println("accountRecord");
        int id = 0;
        account instance = new account();
        account_model expResult = new account_model();
        account_model result = instance.accountRecord(id);
        assertNotEquals(expResult, result);
        
    }

    /**
     * Test of RechargeAccount method, of class account.
     * Passing a null object
     */
    @Test(expected=NullPointerException.class)
    public void testRechargeAccount() {
        System.out.println("RechargeAccount");
        account_model a = null;
        account instance = new account();
        boolean expResult = false;
        boolean result = instance.RechargeAccount(a);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of RechargeAccount method, of class account.
     * Testing for an object with values
     */
    @Test
    public void testRechargeAccount1() {
        System.out.println("RechargeAccount");
        account_model a = new account_model();
        a.setIdaccount(1);
        a.setRegular_token(1);
        a.setBalance(1000);
        a.setDate("2017/11/25");
        account instance = new account();
        boolean expResult = true;
        boolean result = instance.RechargeAccount(a);
        assertEquals(expResult, result);
    }
    
}
