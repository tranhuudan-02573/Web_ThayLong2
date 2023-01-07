package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.CartItem;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.model.review.Vote;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User extends Base<User> implements Serializable {
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

    private Carts carts = listToCarts();


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
        return new AbstractDAO<UserState>("user_states").get(" and id=" + this.user_stateId, UserState.class, null).get();
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
        Order order = new AbstractDAO<Order>("carts").get("and cart_items.isSave =true   and carts.userId =" + this.id + " order by carts.created_at desc limit 1", " inner join cart_items on carts.cart_itemId = cart_items.id  ", Order.class, null).orElse(null);
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
        return new AbstractDAO<CartItem>("carts").list("and userId =" + this.id, CartItem.class, null, null, null, null);
    }


    Map<CartItem, Integer> cartItemIntegerMap() {
        Map<CartItem, Integer> rs = new HashMap<>();
        for (CartItem c : _carts()) {
            rs.put(c, c.getQuantity());
        }
        return rs;
    }


}
