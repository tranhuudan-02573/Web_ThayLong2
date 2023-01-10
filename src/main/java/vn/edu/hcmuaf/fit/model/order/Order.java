/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.CustomerDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.user.Customer;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.util.List;

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


    public List<OrderDetail> _orderDetails() {
        return new AbstractDAO<OrderDetail>("order_detail").list(" and orderId =" + this.id, OrderDetail.class, null, null, null, null);
    }

    public Code _code() {
        return new AbstractDAO<Code>("codes").get(" and id=" + this.codeId, Code.class, null).get();
    }

    public OrderState _orderState() {
        return new AbstractDAO<OrderState>("order_states").get(" and id=" + this.order_stateId, OrderState.class, null).get();
    }


    public User _user() {
        return new AbstractDAO<User>("users").get(" and id=" + this.userId, User.class, null).get();
    }

    public Customer _customer() {
        return new CustomerDAO().get(" and id=" + this.customerId, Customer.class, null).get();
    }


    //    public BigDecimal total() {
//        BigDecimal total = new BigDecimal(0);
//        for (OrderDetail orderDetail : orderDetails) {
//            total = total.add(orderDetail.getRealPrice());
//        }
//        return total;
//    }

}
