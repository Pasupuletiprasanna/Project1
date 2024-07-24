package BankappDAO;



import java.sql.Connection;
import java.sql.DriverManager;

public class AdminDAO {

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/webapp";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Prasanna@123";
	 Connection getConnection(String url, String un,String pa) {
	 Connection conn = null;
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Create database connection
            conn = DriverManager.getConnection
            		(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        return conn; 
        // all the remaining functions are going to use this conn
 }
}