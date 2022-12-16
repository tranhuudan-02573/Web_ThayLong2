package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderState extends Base<OrderState> implements Serializable {
    private String name;

    public List<Order> _orders() {
        return new AbstractDAO<Order>("orders").list(" and order_stateId=" + this.id, Order.class, null, null);
    }
}

