package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Color extends Base<Color> implements Serializable {

    private String name;

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phone_color").list(" and colorId =" + this.id, Phone.class, null, null);
    }



}
