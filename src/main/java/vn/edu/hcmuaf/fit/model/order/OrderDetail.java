/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.model.phone.Phone;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetail implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int orderId;
    private int phoneId;
    private int quantity;
    private double price;
    private int discount;

private Phone phone;


    public BigDecimal getTotal() {
        BigDecimal total = new BigDecimal(price * quantity);
        return total;
    }

    public BigDecimal getRealPrice() {
        BigDecimal total = new BigDecimal(price * quantity - (price * quantity * (double) discount / 100));
        return total;
    }

}
