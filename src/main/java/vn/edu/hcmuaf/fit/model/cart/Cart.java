package vn.edu.hcmuaf.fit.model.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private Integer quantity;
    private Integer phoneId;
    private Integer userId;
    private boolean save;
    private Integer colorId;




}
