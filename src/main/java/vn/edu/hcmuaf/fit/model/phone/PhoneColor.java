package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

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


}
