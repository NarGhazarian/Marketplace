package ConnectDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {

    public Connection connect() {

        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            System.out.println("Error!!!!!!" + e);
        }

        try {
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/marketplace",
                    "root", "admin");
            System.out.println("Connected!");
        } catch (SQLException e) {
            System.out.println("Error!!!!!!" + e);
        }
        return conn;
    }
}
