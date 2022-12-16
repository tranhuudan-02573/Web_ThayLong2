/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.user.Customer;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order extends Base<Order> implements Serializable {

    private Integer userId;
    private Integer customerId;
    private Integer order_stateId;
    private String payment;
    private Integer total;
    private Integer codeId;


    public Code _code() {
        return new AbstractDAO<Code>("codes").get(" and id=" + this.codeId, Code.class, null);
    }

    public OrderState _orderState() {
        return new AbstractDAO<OrderState>("order_states").get(" and id=" + this.order_stateId, OrderState.class, null);
    }

    public User _user() {
        return new AbstractDAO<User>("users").get(" and id=" + this.userId, User.class, null);
    }


//    public BigDecimal total() {
//        BigDecimal total = new BigDecimal(0);
//        for (OrderDetail orderDetail : orderDetails) {
//            total = total.add(orderDetail.getRealPrice());
//        }
//        return total;
//    }

}
