package vn.edu.hcmuaf.fit.model.cart;

import lombok.Data;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Cart implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private Integer quantity;
    private Integer phoneId;
    private Integer userId;
    private boolean save;




}
