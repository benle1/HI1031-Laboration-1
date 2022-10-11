package BO;

import DB.UserDB;
import UI.UserInfo;

/**
 *
 * @author Benny & Chris
 */
public class UserHandler {
    public static UserInfo getUser(String input) {

        User user = UserDB.getUser(input);

        UserInfo copyOfUser = new UserInfo(user.getUserName(),user.getPassword());
        
        return copyOfUser;
    }
}
