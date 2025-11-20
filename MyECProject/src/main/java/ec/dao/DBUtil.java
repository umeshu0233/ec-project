package ec.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = "jdbc:h2:~/ecdb;MODE=MySQL;AUTO_SERVER=TRUE";
    private static final String USER = "user";
    private static final String PASS = "pass";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.h2.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("H2 Driver not found", e);
        }
        return DriverManager.getConnection(URL, USER, PASS);
    }
}