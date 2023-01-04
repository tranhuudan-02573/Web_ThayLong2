package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhoneState extends Base<PhoneState> implements Serializable {
    private String name;

    private String key;

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phones").list(" and phone_stateId=" + this.id, Phone.class, null, null,null, null);
    }

}
