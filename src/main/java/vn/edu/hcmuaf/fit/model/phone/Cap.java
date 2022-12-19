package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;

import java.util.List;
import java.util.Optional;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cap extends Base<Cap> {
    private String unit;
    private Integer cap;
    private Integer phoneId;

    public Phone _phone() {
        return new AbstractDAO<Phone>("phones").get(" and id = " + this.phoneId, Phone.class, null).get();
    }

    public List<PhoneCap> _phones() {
        return new AbstractDAO<PhoneCap>("phone_cap").list(" and capId=" + this.id, PhoneCap.class, null, null);
    }

}
