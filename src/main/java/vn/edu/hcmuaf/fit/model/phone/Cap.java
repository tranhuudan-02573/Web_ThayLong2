package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cap {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int id;
    private String unit;
    private Integer cap;
    private Integer phoneId;

    public Phone _phone() {
        return new PhoneDAO("phones").get(" and id = " + this.phoneId, Phone.class, null);
    }


    public Cap(String unit, Integer cap) {
        this.unit = unit;
        this.cap = cap;
    }

    public Cap(int id, String unit, Integer cap) {
        this.id = id;
        this.unit = unit;
        this.cap = cap;
    }
}
