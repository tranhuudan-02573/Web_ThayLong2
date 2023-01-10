package vn.edu.hcmuaf.fit.listener;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.CartItemDAO;
import vn.edu.hcmuaf.fit.model.cart.CartItem;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.ArrayList;
import java.util.List;

public class MyAttributeListener implements HttpSessionAttributeListener {
    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        String attributeName = event.getName();
        Object attributeValue = event.getValue();
        if (attributeName.equals(Variable.Global.USER.toString())) {
            Carts cart = (Carts) event.getSession().getAttribute(Variable.Global.CART.toString());
            User user = (User) event.getSession().getAttribute(Variable.Global.USER.toString());
            cart.merge(user.listToCarts());
        }
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        String attributeName = event.getName();
        Object attributeValue = event.getValue();
        System.out.println("Attribute removed : " + attributeName + " : " + attributeValue);
        if (attributeName.equals(Variable.Global.USER.toString())) {
            Carts cart = (Carts) event.getSession().getAttribute(Variable.Global.CART.toString());
            User user = (User) event.getSession().getAttribute(Variable.Global.USER.toString());
            List<CartItem> cartItems = new ArrayList<>(cart.getCartItemIntegerMap().keySet());
            System.out.println("Attribute removed 2: " + attributeName + " : " + attributeValue);
            for (CartItem c : cartItems
            ) {
                System.out.println("Attribute removed 3: " + attributeName + " : " + attributeValue);
                c.setUserId(user.getId());
                System.out.println(c);
                new CartItemDAO().save(c);

            }
        }
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        String attributeName = event.getName();
        Object attributeValue = event.getValue();
        System.out.println("Attribute replaced : " + attributeName + " : " + attributeValue);
    }
}
