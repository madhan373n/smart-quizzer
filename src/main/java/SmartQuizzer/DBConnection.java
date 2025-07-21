package SmartQuizzer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	    public static Connection getConnection() throws Exception {
	        String url = "jdbc:mysql://localhost:3306/madhan";
	        String user = "root";
	        String pass = "Madhan1702";
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        return DriverManager.getConnection(url, user, pass);
	    }
	}


