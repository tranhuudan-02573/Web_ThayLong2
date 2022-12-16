package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Spec extends Base<Spec> implements Serializable {
    private String name;
    private Integer specTypeId;

    public SpecType _specType() {
        return new AbstractDAO<SpecType>("spec_types").get(" and id=" + this.specTypeId, SpecType.class, null);
    }


    public List<PhoneSpec> _phones() {
        return new AbstractDAO<PhoneSpec>("phone_spec").list(" and specId =" + this.id, PhoneSpec.class, null, null);
    }


}
