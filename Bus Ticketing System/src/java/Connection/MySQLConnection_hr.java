package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection_hr {
	
	
	public static Connection createConnection(){
		Connection conn = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csse_hotel_managment","root","");
			
			if(conn != null){
				System.out.println("Connection Successful");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Connection UnSuccessful !!");
		}
		
		return conn;
	}
	
	
}
