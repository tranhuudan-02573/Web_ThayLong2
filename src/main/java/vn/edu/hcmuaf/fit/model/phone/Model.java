package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.phone.BrandDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Model extends Base<Model> implements Serializable {
    private String name;
    private String img;
    private int brandId;

    public Brand _brand() {
        return new BrandDAO("brands").get(" and id = " + this.brandId, Brand.class, null);
    }

    public List<Phone> _phones() {
        return new PhoneDAO("phones").list(" and modelId = " + this.id, Phone.class, null, null);
    }

}
