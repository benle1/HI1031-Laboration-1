/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import BO.Item;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author benny
 */
public class ItemDB {

    public static ArrayList<Item> getItems(String input) {
        ArrayList<Item> itemList = new ArrayList<>();
        try {
            PreparedStatement search = DBManager.getConnection().prepareStatement("SELECT name, price, description from T_ITEMS WHERE Name ='"+input+"'");
            ResultSet rs = search.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String description = rs.getString("description");
                int price = rs.getInt("price");
                itemList.add(new Item(name, description, price));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return itemList;
    }
}