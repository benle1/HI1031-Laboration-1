/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BO;

import DB.ItemDB;
import DB.UserDB;
import UI.ItemInfo;
import UI.UserInfo;
import java.util.ArrayList;

/**
 *
 * @author benny
 */
public class UserHandler {
    public static UserInfo getUser(String input) {

        User user = UserDB.getUser(input);

        UserInfo copyOfUser = new UserInfo(user.getUserName(),user.getPassword());
        
        return copyOfUser;
    }
}
