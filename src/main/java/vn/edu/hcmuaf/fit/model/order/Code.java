package vn.edu.hcmuaf.fit.model.order;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Code implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String code;
    private int value;
    private Timestamp killed_at;

    public Code() {
        super();

    }
}

