package BankappDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteAccountDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/webapp";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Prasanna@123";
    private static final String DELETE_CUSTOMER_SQL = "DELETE FROM customer WHERE AccountNo = ?;";

    // Method to establish a connection to the database
    protected Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

    // Method to delete a customer account
    public boolean deleteCustomerAccount(int accountNo) {
        boolean rowDeleted = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER_SQL)) {

            preparedStatement.setInt(1, accountNo);

            int affectedRows = preparedStatement.executeUpdate();
            rowDeleted = (affectedRows > 0);

            System.out.println("Rows affected: " + affectedRows);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Exception: " + e.getMessage());
        }
        return rowDeleted;
    }
}