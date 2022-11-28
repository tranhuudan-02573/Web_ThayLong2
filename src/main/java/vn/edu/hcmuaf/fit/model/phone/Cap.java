package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class Cap {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int id;
    private String name;
    private int cap;
    private int phoneId;
}
