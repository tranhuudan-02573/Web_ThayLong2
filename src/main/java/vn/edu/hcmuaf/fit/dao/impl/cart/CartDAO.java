package vn.edu.hcmuaf.fit.dao.impl.cart;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.Cart;
import vn.edu.hcmuaf.fit.model.user.User;

import java.util.List;

public class CartDAO extends AbstractDAO<Cart> {

    public CartDAO(String table) {
        super(table);
    }

    public void insertCart(Cart pp) {
        insert("insert into carts (phoneId,quantity,userId,save,created_at,updated_at)" +
                        " values(:t.phoneId,:t.quantity,:t.userId,:t.save,:t.created_at,:t.updated_at)",
                pp);
    }

   public List<Cart> getAllByUser(int uid){

        return list(" and userId ="+uid, Cart.class,null,null);

    }


    public static void main(String[] args) {

        System.out.println(new CartDAO("cart").getAllByUser(1));


    }

}
