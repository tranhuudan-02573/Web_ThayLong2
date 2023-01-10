package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.order.OrderState;

import java.sql.Timestamp;

public class OrderStateDAO extends AbstractDAO<OrderState> {
    public OrderStateDAO() {
        super("order_states");
    }

    public int save(OrderState a) {
        a.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        a.setCreated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId(" insert into order_states(name,key,created_at,updated_at) values (:t.name,:t.key,:t.created_at,:t.updated_at)", a);
    }

    public boolean update(OrderState a) {
        a.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return update(" update order_states set name =:t.name,key=:t.key where id=:t.id", a);
    }

    public void delete(OrderState a) {
        update(" delete from order_states where id=:t.id ", a);
    }

}
