package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Spec extends Base<Spec> implements Serializable {
    private String name;
    private Integer specTypeId;
    private String key;

    public SpecType _specType() {
        return new AbstractDAO<SpecType>("spec_types").get(" and id=" + this.specTypeId, SpecType.class, null).get();
    }



    public List<PhoneSpec> _phones() {
        return new AbstractDAO<PhoneSpec>("phone_spec").list(" and specId =" + this.id, PhoneSpec.class, null, null);
    }


}
