package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Code extends Base<Code> implements Serializable {
    private String code;
    private Integer value;
    private Timestamp start_at;
    private Timestamp end_at;
    private String unit;

    public List<Order> _orders() {
        return new AbstractDAO<Order>("orders").list(" and codeId=" + this.id, Order.class, null, null);
    }


}

