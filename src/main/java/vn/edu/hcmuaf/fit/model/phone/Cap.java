package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cap extends Base<Cap> {
    private String unit;
    private Integer cap;
    private Integer phoneId;

    public Phone _phone() {
        return new PhoneDAO("phones").get(" and id = " + this.phoneId, Phone.class, null);
    }

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phone_cap").list(" and capId=" + this.id, Phone.class, null, null);
    }

}
