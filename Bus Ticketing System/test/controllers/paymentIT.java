/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import models.payment_model;
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
public class paymentIT {
    
    public paymentIT() {
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
     * Test of RechargeAccount method, of class payment.
     * When there is no object, NullPointerException returns
     */
    @Test(expected=NullPointerException.class)
    public void testRechargeAccount() {
        System.out.println("RechargeAccount");
        payment_model p = null;
        payment instance = new payment();
        boolean expResult = false;
        boolean result = instance.RechargeAccount(p);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of RechargeAccount method, of class payment.
     * When there is a object, but no values set, due to foreign key ,MySQLIntegrityConstraintViolationException  returns
     * Test fails as expectedResult is true
     */
    @Test
    public void testRechargeAccount1() {
        System.out.println("RechargeAccount");
        payment_model p = new payment_model();
        payment instance = new payment();
        boolean expResult = true;
        boolean result = instance.RechargeAccount(p);
        assertEquals(expResult, result);
    }
    
    /**
     * Test of RechargeAccount method, of class payment.
     */
    @Test
    public void testRechargeAccount2() {
        System.out.println("RechargeAccount");
        payment_model p = new payment_model();
        p.setIdpayment(1);
        p.setAccount(1);
        p.setType("regular");
        p.setCardNumber(1234);
        p.setRecharge_amount(1000.00);
        payment instance = new payment();
        boolean expResult = true;
        boolean result = instance.RechargeAccount(p);
        assertEquals(expResult, result);
    }
    
}
