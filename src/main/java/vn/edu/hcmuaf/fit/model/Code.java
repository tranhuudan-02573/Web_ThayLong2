package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class Code {
    private int id;
    private Timestamp create_at;
    private Timestamp updated_at;
    private String code;
    private int value;
    private Timestamp killed_at;
    public Code() {
        super();

    }
}

