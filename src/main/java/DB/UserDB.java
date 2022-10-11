package DB;

import BO.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Benny & Chris
 */
public class UserDB {
    
    /**
     * Gör ett anrop mot databasen och returnerar användarens information
     * @param input Användarens username
     * @return 
     */
        public static User getUser(String input) {
            
        User user = new User(null,null);
        try {
            PreparedStatement search = DBManager.getConnection().prepareStatement("SELECT userName, userPassword from T_USERS WHERE userName ='"+input+"'");
            ResultSet rs = search.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("userName");
                String password = rs.getString("userPassword");
              
                user.setUserName(userName);
                user.setPassword(password); 
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
       
        return user;
    }
}
