/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import BO.Item;
import static java.lang.StackWalker.getInstance;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author benny
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

