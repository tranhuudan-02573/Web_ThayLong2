package vn.edu.hcmuaf.fit.dao.impl.order;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.order.OrderDetail;

public class OrderDetailDAO extends AbstractDAO<OrderDetail> {


    public OrderDetailDAO(String table) {
        super(table);
    }

    public void insertOD(OrderDetail od) {

        insert("insert into order_detail (`quantity`,price,created_at,updated_at,discount,phoneId,orderId) " +
                "values (:t.quantity,:t.price,:t.created_at,:t.updated_at,:t.discount,:t.phoneId,:t.orderId)", od);


    }


}
