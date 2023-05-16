package connectiondb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author rafae
 */
public class MySQL {


    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

    private static final String URL = "jdbc:mysql://localhost:3306/aulaoteste";

    private static final String USER = "root";

    private static final String PASSWORD = "12345";

    public static Connection getConnection() throws Exception {
        try {
            //Class.forName(DRIVER);

            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            //System.out.println("Connected");

            return conn;
        } catch (SQLException e) {
            System.err.println(e);

            return null;
        }
    }
}