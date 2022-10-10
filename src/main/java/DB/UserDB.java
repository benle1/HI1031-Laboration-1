/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import BO.Item;
import BO.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author benny
 */
public class UserDB {
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
