 
package controllers;

import java.util.ArrayList;
import models.User;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author HarshaKoshila
 */
public class UserCtrlTest {
    
    public UserCtrlTest() {
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
     * Test of addUser method, of class UserCtrl.
     */
    @Test(expected=NullPointerException.class)
    public void testAddUser(){
        System.out.println("addUser");
        User ob = null;
        UserCtrl instance = new UserCtrl();
        boolean expResult = false;
        boolean result = instance.addUser(ob); 
        assertEquals(expResult, result); 
    }
    
    /**
     * addUser with real Object
     */
     @Test
    public void testAddUser1(){
        System.out.println("addUser with real Object");
        User ob = new User(); 
        ob.setName("Vishwa");
        ob.setEmail("abc@gmail.com");
        ob.setType("Manager");
        ob.setPassword("123");
        UserCtrl instance = new UserCtrl();
        boolean expResult = true;
        boolean result = instance.addUser(ob); 
        assertEquals(expResult, result); 
    }

    /**
     * Test of getUser method, of class UserCtrl.
     */
    @Test
    public void testGetUser() {
        System.out.println("getUser");
        String name = "";
        UserCtrl instance = new UserCtrl();
        ArrayList<User> expResult = null;
        ArrayList<User> result = instance.getUser(name);
        assertEquals(expResult, result); 
    }
    
}
