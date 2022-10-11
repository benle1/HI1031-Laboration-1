package BO;

import DB.ItemDB;
import UI.ItemInfo;
import java.util.ArrayList;

/**
 *
 * @author Benny & Chris
 */
public class ItemHandler {

    public static ArrayList<ItemInfo> getItems(String input) {


        ArrayList<Item> DBItems = ItemDB.getItems(input);

        ArrayList<ItemInfo> copyOfItems = new ArrayList<>();
        
        for (int i = 0; i < DBItems.size(); i++) {
            Item item = DBItems.get(i);
            copyOfItems.add(new ItemInfo(item.getName(), item.getDescription(), item.getPrice()));
        }

        return copyOfItems;
    }
}

