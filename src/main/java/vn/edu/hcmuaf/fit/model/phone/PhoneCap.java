package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhoneCap extends Base<PhoneCap> implements Serializable {

    private Integer phoneId;

    private Integer capId;

    public Cap _cap() {
        return new AbstractDAO<Cap>("caps").get(" and id = " + this.getCapId(), Cap.class, null);
    }

    public Phone _phone() {
        return new AbstractDAO<Phone>("phones").get(" and id = " + this.getPhoneId(), Phone.class, null);
    }


}
