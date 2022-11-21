package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class Code extends  BaseModel{
    private String code;
    private int value;
    private Timestamp killed_at;
    public Code() {
        super();

    }
}

