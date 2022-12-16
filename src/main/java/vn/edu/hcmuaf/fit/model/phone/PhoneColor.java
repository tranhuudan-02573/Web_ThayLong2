package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.phone.ColorDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneColorDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhoneColor implements Serializable {
    private Integer colorId;
    private Integer phoneId;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String img;
    private Integer total;
    private Color color;

    public  Phone _phone(){
        return new PhoneDAO("phones").getPhoneById(this.phoneId);
    }

    public Color _color() {
        return new ColorDAO("colors").get(" id = " + this.colorId, Color.class, null);

    }

    public int total() {
        return new PhoneColorDAO("phone_color").count("colorId", " and phoneId =" + this.phoneId);
    }


}
