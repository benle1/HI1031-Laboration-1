/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BO;

import DB.ItemDB;
import UI.ItemInfo;
import java.util.ArrayList;

/**
 *
 * @author benny
 */
public class ItemHandler {

    public static ArrayList<ItemInfo> getItems(String input) {


        ArrayList<Item> DBItems = ItemDB.getItems(input);

        ArrayList<ItemInfo> copyOfItems = new ArrayList<>();
        
        // iterera igenom it.hasnext it.iteration
        /* Item item= (Item) i;
             i.add( copyOfItems.add(new ItemInfo(item.getName(),item.getDescription(),item.getPrice()));)
        }*/
        for (int i = 0; i < DBItems.size(); i++) {
            Item item = DBItems.get(i);
            copyOfItems.add(new ItemInfo(item.getName(), item.getDescription(), item.getPrice()));
        }

        return copyOfItems;
    }
}

