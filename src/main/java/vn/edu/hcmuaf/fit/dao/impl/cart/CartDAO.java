package vn.edu.hcmuaf.fit.dao.impl.cart;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.Cart;
import vn.edu.hcmuaf.fit.model.user.User;

public class CartDAO extends AbstractDAO<Cart> {

    public void insertCart(Cart pp) {
        insert("insert into carts (phoneId,quantity,userId,save,created_at,updated_at)" +
                        " values(:t.phoneId,:t.quantity,:t.userId,:t.save,:t.created_at,:t.updated_at)",
                pp);
    }



    public static void main(String[] args) {
        Cart c = new Cart();
        c.setSave(false);
        c.setPhoneId(1);
        c.setUserId(2);
        new CartDAO().insertCart(c);
    }

}
