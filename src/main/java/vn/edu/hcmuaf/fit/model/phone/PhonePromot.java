package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhonePromot implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private Integer promotId;
    private Integer phoneId;
    private String desc;
    private Promot promot;
    private Timestamp end_at;
    private Timestamp start_at;


}
