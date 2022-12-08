package vn.edu.hcmuaf.fit.model.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Code implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String code;
    private Integer value;
    private Timestamp start_at;
    private Timestamp end_at;


}

