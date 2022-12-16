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
import vn.edu.hcmuaf.fit.model.phone.Phone;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetail extends Base<OrderDetail> implements Serializable {
    private int orderId;
    private int phoneId;
    private int quantity;
    private double price;
    private int discount;

    public Phone _phone() {
        return new AbstractDAO<Phone>("phones").get(" and id =" + this.phoneId, Phone.class, null);
    }

    public Order _order() {
        return new AbstractDAO<Order>("orders").get(" and id =" + this.orderId, Order.class, null);
    }


    public BigDecimal getTotal() {
        BigDecimal total = new BigDecimal(price * quantity);
        return total;
    }

    public BigDecimal getRealPrice() {
        BigDecimal total = new BigDecimal(price * quantity - (price * quantity * (double) discount / 100));
        return total;
    }

}
