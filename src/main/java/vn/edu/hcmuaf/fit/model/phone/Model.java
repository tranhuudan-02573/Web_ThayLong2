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
public class Model implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String img;
    private int brandId;

    public Brand _brand() {
        return new BrandDAO("brands").get(" and id = " + this.brandId, Brand.class, null);
    }

    public List<Phone> _phones() {
        return new PhoneDAO("phones").list(" and modelId = " + this.id, Phone.class, null, null);
    }

    public Model(String name, String img, int brandId) {
        this.name = name;
        this.img = img;
        this.brandId = brandId;
    }

    public Model(int id, String name, String img, int brandId) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.brandId = brandId;
    }
}
