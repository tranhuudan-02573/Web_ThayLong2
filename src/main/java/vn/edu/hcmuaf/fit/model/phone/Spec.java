package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
public class Spec extends Base<Spec> implements Serializable {
    private String name;
    private Integer specTypeId;

    public SpecType _specType() {
        return new AbstractDAO<SpecType>("spec_types").get(" and id=" + this.specTypeId, SpecType.class, null);
    }


    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phone_spec").list(" and specId =" + this.id, Phone.class, null, null);
    }


}
