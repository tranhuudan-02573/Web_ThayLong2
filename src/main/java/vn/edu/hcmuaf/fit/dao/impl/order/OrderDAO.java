package vn.edu.hcmuaf.fit.dao.impl.order;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.order.OrderDetail;

import java.math.BigInteger;
import java.util.Set;

public class OrderDAO extends AbstractDAO<Order> {


    public OrderDAO(String table) {
        super(table);
    }

    public Object insertOrder(Order o) {

        Object id = insertWithId("insert into `order` (`userId`,customerId,created_at,updated_at,order_stateId,payment,total,codeId) " +
                "values (:t.userId,:t.customerId,:t.created_at,:t.updated_at,:t.order_stateId,:t.payment,:t.total,:t.codeId)", o);


        JDBiConnector.get().useHandle(handle -> {
            if (!o.getOrderDetails().isEmpty()) {
                Set<OrderDetail> pds = o.getOrderDetails();
                for (OrderDetail pd : pds) {
                    pd.setOrderId(((BigInteger) id).intValue());
                    new OrderDetailDAO("order_detail").insertOD(pd);
                }
            }


        });


        return id;


    }

    public static void main(String[] args) {

        OrderDetail od = new OrderDetail();
        od.setPhoneId(2);
        od.setQuantity(1);

        Order o = new Order();
        o.setCodeId(1);
        o.setPayment("thanh toan qua the");
        o.addOrderDetail(od);
        System.out.println(new OrderDAO("orders").insertOrder(o));


    }

}
