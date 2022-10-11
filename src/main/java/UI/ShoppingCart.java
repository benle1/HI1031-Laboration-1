package UI;

import java.util.ArrayList;

/**
 *
 * @author Benny & Chris
 */
public class ShoppingCart {

    
    private static ArrayList<ItemInfo> shoppingCart=null;
    
    public ShoppingCart(){
        if(shoppingCart == null){
            shoppingCart = new ArrayList<>();
        }
    }
    
    public ArrayList<ItemInfo> getShoppingCart() {

        return shoppingCart;
    }
    
    public void addToCart(ItemInfo item){
        shoppingCart.add(item);
    }
    
    @Override
    public String toString() {
        String info="";
        for(int i=0;i<shoppingCart.size();i++){
            info += shoppingCart.get(i).getName()+ " " + shoppingCart.get(i).getPrice() + " "+shoppingCart.get(i).getDescription()+"<br/>";
        }
        return info;
    }
    
}
