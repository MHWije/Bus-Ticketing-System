 
package Connection;
import java.sql.*;
 
public class Connection2 {
    private static final String uname="root";
    private static final String password="";
    private static final String con_string="jdbc:mysql://localhost:3306/hotel_db";
    
    
    public static Connection getConnection() 
    {
         Connection conn=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(con_string,uname,password);
            System.out.println("Connected DB"); 
        }
        catch(SQLException|ClassNotFoundException e)
        {
            System.out.println("DB Error  :"+e);
        }
        
        return conn;
    }
    
     public static void main(String[] args) {  
        
    }
}
