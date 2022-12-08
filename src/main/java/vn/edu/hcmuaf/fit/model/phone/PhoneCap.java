package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhoneCap {
    private Integer phoneId;
    private Integer capId;
    private Cap cap;
    private Timestamp created_at;
    private Timestamp updated_at;
}
