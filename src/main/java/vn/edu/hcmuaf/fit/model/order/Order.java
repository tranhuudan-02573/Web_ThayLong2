/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.model.user.Customer;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;

    private Integer userId;
    private Integer customerId;
    private Integer order_stateId;
    private Set<OrderDetail> orderDetails = new HashSet<>();
    private Customer customer;
    private String payment;
    private Integer total;
    private String status;
    private Integer codeId;
    private Code code;

    public void addOrderDetail(OrderDetail od) {
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
