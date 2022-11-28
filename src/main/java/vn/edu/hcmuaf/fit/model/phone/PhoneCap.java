package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class PhoneCap {
    private int phoneId;
    private int capId;
    private Cap cap;
    private Timestamp created_at;
    private Timestamp updated_at;
}
