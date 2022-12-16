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
public class Color extends Base<Color> implements Serializable {

    private String name;

    public List<PhoneCap> _phones() {
        return new AbstractDAO<PhoneCap>("phone_color").list(" and colorId =" + this.id, PhoneCap.class, null, null);
    }


}
