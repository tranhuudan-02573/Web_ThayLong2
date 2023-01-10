package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.CartItem;

public class CartItemsDao extends AbstractDAO<CartItem> {

    public CartItemsDao() {
        super("cart_items");
    }

    public int save(CartItem item) {
        return insertWithId(" insert into cart_items(phoneId,colorId,quantity,price,isSave) " +
                "values(:t.phoneId,:t.colorId,:t.quantity,:t.price,"+(item.isSave()?1:0)+")", item);
    }

    public Integer getID() {
        try {
            return  max("id","");
        }
        catch (Exception e){
            return null;
        }
    }

    public static void main(String[] args) {

        System.out.println(new CartItemsDao().getID());
    }
}
