package BankappDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DepositDAO {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/webapp";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Prasanna@123";

    static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static boolean deposit(int amount, int accNo) {
        String query = "UPDATE customer SET Balance = Balance + ? WHERE Accountno = ?";
        try {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, amount);
            pstmt.setInt(2, accNo);
            int rowsAffected = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void recordTransaction(int accNo, String type, int amount) {
        String query = "INSERT INTO transactions (Accountno, type, amount, date) VALUES (?, ?, ?, NOW())";
        try {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, accNo);
            pstmt.setString(2, type);
            pstmt.setInt(3, amount);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	public static double getBalance(int accountNumber) {
		// TODO Auto-generated method stub
		return 0;
	}
}