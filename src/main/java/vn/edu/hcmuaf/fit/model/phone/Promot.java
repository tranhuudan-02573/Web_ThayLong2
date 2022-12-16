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
public class Promot extends Base<Promot> implements Serializable {

    private String name;

    public List<Phone> _phones() {
        return new AbstractDAO<Phone>("phone_promot").list(" and promotId =" + this.id, Phone.class, null, null);
    }


}
