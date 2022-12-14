package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.CartItemDAO;
import vn.edu.hcmuaf.fit.dao.impl.UserStateDAO;
import vn.edu.hcmuaf.fit.model.cart.CartItem;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.model.review.Vote;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User extends Base<User> implements Serializable, HttpSessionBindingListener {
    private String name;
    private String password;
    private String avatar;
    private String phone;
    private String address;
    private boolean gender;
    private boolean active;
    private Integer user_stateId;
    private String email;

    private String permission;

    public Carts listToCarts() {
        return new Carts(cartItemIntegerMap());
    }


    public Action get(String v) {
        List<PermissionAction> acs = _actions();
        for (PermissionAction a : acs
        ) {
            if (a._action().getCode().equals(v)) return a._action();
        }
        return null;

    }

    public UserState _userState() {
        return new UserStateDAO().get(" and id=" + this.user_stateId, UserState.class, null).get();
    }


    public String avatar() {
        StringBuilder rs = new StringBuilder();
        StringTokenizer st = new StringTokenizer(this.name);

        String[] sts = this.name.trim().toUpperCase().split(" ");

        int start = 0;
        if (sts.length > 2) start = sts.length - 3;

        for (int i = start; i < sts.length; i++) {
            rs.append(sts[i].charAt(0));
        }
        return rs.toString();
    }

    public List<PermissionAction> _actions() {
        return new AbstractDAO<PermissionAction>("permission_action").list(" and userId =" + this.id, PermissionAction.class, null, null, null, null);
    }


    public Timestamp nearBuy() {
        Order order = new AbstractDAO<Order>("orders").get("  and userId =" + this.id + " order by created_at desc limit 1", Order.class, null).orElse(null);

        return (order != null) ? order.getCreated_at() : null;
    }


    public Timestamp nearWish() {
        Order order = new AbstractDAO<Order>("cart_items").get("and cart_items.isSave =true   and userId =" + this.id + " order by created_at desc limit 1", Order.class, null).orElse(null);
        return (order != null) ? order.getCreated_at() : null;
    }

    public List<Review> _reviews() {
        return new AbstractDAO<Review>("reviews").list(" and userId =" + this.id, Review.class, null, null, null, null);
    }

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phones").list(" and userId =" + this.id, Phone.class, null, null, null, null);
    }

    public List<Vote> _votes() {
        return new AbstractDAO<Vote>("votes").list(" and userId =" + this.id, Vote.class, null, null, null, null);
    }

    public List<Order> _orders() {
        return new AbstractDAO<Order>("orders").list(" and userId = " + this.id, Order.class, null, null, null, null);
    }

    public List<CartItem> _carts() {
        return new CartItemDAO().list("and userId =" + this.id, CartItem.class, null, null, null, null);
    }


    Map<CartItem, Integer> cartItemIntegerMap() {
        Map<CartItem, Integer> rs = new HashMap<>();
        for (CartItem c : _carts()) {
            rs.put(c, c.getQuantity());
        }
        return rs;
    }


    @Override
    public void valueBound(HttpSessionBindingEvent event) {
        System.out.println("-- HttpSessionBindingListener#valueBound() --");
        System.out.printf("added attribute name: %s, value:%s %n",
                event.getName(), event.getValue());
        String attributeName = event.getName();
        Object attributeValue = event.getValue();
        if (attributeName.equals(Variable.Global.USER.toString())) {
            Carts cart = (Carts) event.getSession().getAttribute(Variable.Global.CART.toString());
            User user = (User) event.getValue();
            cart.merge(user.listToCarts());
        }
    }

    @Override
    public void valueUnbound(HttpSessionBindingEvent event) {
        System.out.println("-- HttpSessionBindingEvent#valueUnbound() --");
        System.out.printf("removed attribute name: %s, value:%s %n",
                event.getName(), event.getValue());

        String attributeName = event.getName();
        Object attributeValue = event.getValue();
        if (attributeName.equals(Variable.Global.USER.toString())) {
            Carts cart = (Carts) event.getSession().getAttribute(Variable.Global.CART.toString());
            User user = (User) event.getValue();
            List<CartItem> cartItems = new ArrayList<>(cart.getCartItemIntegerMap().keySet());
            for (CartItem c : cartItems
            ) {
                c.setUserId(user.getId());
                new CartItemDAO().delete(c);
                new CartItemDAO().save(c);
            }
        }
    }
}
