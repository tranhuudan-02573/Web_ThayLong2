package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sale extends Base<Sale> implements Serializable {
    private String name;
    private String desc;
    private String img;
    private Integer value;
    private String unit;
    private Timestamp end_at;
    private Timestamp start_at;

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phones").list(" and saleId = " + this.id, Phone.class, null, null);
    }

}
