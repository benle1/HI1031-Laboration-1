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

    /**
     * Skapar en connection till databasen
     */
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
     
     /**
      * Skapar en instans av DBmanager om den inte existerar
      * @return 
      */
    private static DBManager getInstance(){
        if(instance == null){
            instance = new DBManager();
        }
        return instance;
    }
   
   /**
    * Returnerar en connection till databasen
    * @return 
    */ 
    public static Connection getConnection(){
        
        return getInstance().con;
    }
    
}

