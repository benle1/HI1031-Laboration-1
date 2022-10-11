package BO;

import DB.UserDB;
import UI.UserInfo;

/**
 *
 * @author Benny & Chris
 */
public class UserHandler {
    
    /**
     * Gör ett anrop till databasen och returnerar en kopia av användaren.
     * @param input Användarens username
     * @return 
     */
    public static UserInfo getUser(String input) {

        User user = UserDB.getUser(input);

        UserInfo copyOfUser = new UserInfo(user.getUserName(),user.getPassword());
        
        return copyOfUser;
    }
}
