package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhonePromot extends Base<PhonePromot> implements Serializable {

    private Timestamp end_at;
    private Timestamp start_at;

    private Integer phoneId;

    private Integer promotId;


    public Promot _promotId() {
        return new AbstractDAO<Promot>("promots").get(" and id = " + this.getPromotId(), Promot.class, null);
    }

    public Phone _phone() {
        return new AbstractDAO<Phone>("phones").get(" and id = " + this.getPhoneId(), Phone.class, null);
    }

}
