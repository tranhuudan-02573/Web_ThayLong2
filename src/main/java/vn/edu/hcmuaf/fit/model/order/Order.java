/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.order;

import lombok.Data;
import vn.edu.hcmuaf.fit.model.user.Customer;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
public class Order implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;

    private int userId;
    private int customerId;
    private int order_stateId;
    private OrderState orderState;
    private Set<OrderDetail> orderDetails = new HashSet<>();
    private OrderState state;
    private Customer customer;
    private String payment;
    private int total;
    private String status;
    private int codeId;
    private Code code;
    public void addOrderDetail(OrderDetail od){
        this.orderDetails.add(od);
    }

    public BigDecimal total() {
        BigDecimal total = new BigDecimal(0);
        for (OrderDetail orderDetail : orderDetails) {
            total = total.add(orderDetail.getRealPrice());
        }
        return total;
    }

}
