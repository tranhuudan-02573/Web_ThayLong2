package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.phone.ModelDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Brand extends Base<Brand> implements Serializable {
    private String name;
    private String logo;
    private String country;

    public List<Model> _models() {
        return new ModelDAO("models").list(" and brandId =" + this.id, Model.class, null, null);
    }

    public List<Phone> _phones() {
        return new PhoneDAO("phones").list(" and brandId=" + this.id, Phone.class, null, null);
    }



}
