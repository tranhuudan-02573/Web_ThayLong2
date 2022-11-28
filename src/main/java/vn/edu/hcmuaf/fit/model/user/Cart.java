package vn.edu.hcmuaf.fit.model.user;

import lombok.Data;
import vn.edu.hcmuaf.fit.model.phone.Phone;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Cart implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int quantity;
    private int phoneId;
    private int userId;
    private String status;
    private boolean save;
    private Phone phone;

}
