package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class PhonePromot implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int promotId;
    private int phoneId;
    private String desc;
    private Promot promot;
    private Timestamp killed_at;


}
