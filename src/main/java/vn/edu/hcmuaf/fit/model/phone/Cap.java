package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

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

    public List<PhoneCap> _phones() {
        return new AbstractDAO<PhoneCap>("phone_cap").list(" and capId=" + this.id, PhoneCap.class, null, null);
    }

}
