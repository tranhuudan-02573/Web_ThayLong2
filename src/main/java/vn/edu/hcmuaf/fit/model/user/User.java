package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.model.review.Vote;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.StringTokenizer;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User extends Base<User> implements Serializable {
    private String name;
    private String password;
    private String phone;
    private String address;
    private boolean gender;
    private boolean active;
    private Integer user_stateId;
    private String status;
    private String email;

    private String permission;

    private List<Carts> carts = _carts();
    private List<Carts> wishs = _wishs();

    private Carts cartList;


//    public Wish get(Wish cart) {
//
//        for (Wish c : carts
//        ) {
//            if (c.getColorId().equals(cart.getPhoneId()) && c.getColorId().equals(cart.getColorId())) return c;
//
//        }
//
//        return null;
//    }
//
//    public void addCart(Wish cart) {
//
//        if (get(cart) != null) {
//            Wish c = get(cart);
//            c.setQuantity(c.getQuantity() + cart.getQuantity());
//        } else {
//            carts.add(cart);
//        }
//
//    }
//
//    public void removeCart(Wish cart) {
//        if (get(cart) != null) carts.remove(cart);
//    }

    public UserState _userState() {
        return new AbstractDAO<UserState>("user_states").get(" and id=" + this.user_stateId, UserState.class, null).get();
    }

//    public int total() {
//        int total = 0;
//        for (Carts c : carts
//        ) {
//            total += c._phone().getPrice();
////            * c.getQuantity()
//        }
//        return total;
//    }

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

    public List<Action> _actions() {
        return new AbstractDAO<Action>("permission_action").list(" and userId =" + this.id, Action.class, null, null);
    }

    public List<Order> _orders() {

        return new AbstractDAO<Order>("orders").list(" and userId = " + this.id, Order.class, null, null);
    }

    public Timestamp nearBuy() {
        return new AbstractDAO<Order>("carts").getCustom(" and save =false and userId =" + this.id + " order by created_at desc ", Order.class).get().getCreated_at();
    }

    public List<Carts> _carts() {
        return new AbstractDAO<Carts>("carts").list(" and isSave=false and userId =" + this.id, Carts.class, null, null);
    }


    public List<Carts> _wishs() {
        return new AbstractDAO<Carts>("carts").list(" and isSave=true and userId =" + this.id, Carts.class, null, null);

    }

    public Timestamp nearWish() {
        return new AbstractDAO<Order>("carts").getCustom(" and save =true and userId =" + this.id + " order by created_at desc ", Order.class).get().getCreated_at();
    }

    public List<Review> _reviews() {
        return new AbstractDAO<Review>("reviews").list(" and userId =" + this.id, Review.class, null, null);
    }

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phones").list(" and userId =" + this.id, Phone.class, null, null);
    }

    public List<Vote> _votes() {
        return new AbstractDAO<Vote>("votes").list(" and userId =" + this.id, Vote.class, null, null);
    }


}
