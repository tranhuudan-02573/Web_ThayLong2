package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SpecType extends Base<SpecType> implements Serializable {
    private String name;

    public List<Spec> _specs() {
        return new AbstractDAO<Spec>("specs").list(" and spec_typeId=" + this.id, Spec.class, null, null);
    }


}
