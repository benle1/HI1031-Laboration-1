package DB;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Benny & Chris
 */
public class DBManager {
        
    private Connection con = null;
    private static DBManager instance = null;

     private DBManager() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String server
                    = "jdbc:mysql://localhost:3306/items";

             con = DriverManager.getConnection(server, "Benny", "1234");
           
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    private static DBManager getInstance(){
        if(instance == null){
            instance = new DBManager();
        }
        return instance;
    }
   
    
    public static Connection getConnection(){
        
        return getInstance().con;
    }
    
}

