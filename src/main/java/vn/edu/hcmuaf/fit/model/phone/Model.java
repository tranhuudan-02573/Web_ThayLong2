package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Model extends Base<Model> implements Serializable {
    private String name;
    private String img;
    private int brandId;

    public Brand _brand() {
        return new AbstractDAO<Brand>("brands").get(" and id = " + this.brandId, Brand.class, null).get();
    }

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phones").list(" and modelId = " + this.id, Phone.class, null, null);
    }

}
