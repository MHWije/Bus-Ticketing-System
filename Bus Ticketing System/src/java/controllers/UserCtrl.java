 
package controllers;  
import Connection.MySQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.User;

public class UserCtrl {
    
    Connection con;
    PreparedStatement ps=null;
    ResultSet rs=null; 
    
    public UserCtrl() {
        con = MySQLConnection.createConnection();
    }
    
       //User details 
    public boolean addUser(User ob){
        boolean status = false;  
        try {
            String add = "INSERT INTO `login`(`username`, `password`, `email`, `type`) VALUES ('"+ob.getName()+"','"+ob.getPassword()+"','"+ob.getEmail()+"','"+ob.getType()+"')";
            ps = con.prepareStatement(add);
            ps.execute();
            status = true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
    
    
      //User Details
    public ArrayList<User> getUser(String name)
    {
        ArrayList<User> list = new ArrayList<User>();
        try {
            String str = "SELECT `idlogin`,`username`, `password`,`type` FROM `login` WHERE username='"+name+"' ";
            ps = con.prepareStatement(str);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                list.add(new User(Integer.parseInt(rs.getString("idlogin")),rs.getString("username"),rs.getString("password"),rs.getString("type")));
            } 
        } catch (Exception e) {
        }
        return list;
    }
    
     
}//end of class
