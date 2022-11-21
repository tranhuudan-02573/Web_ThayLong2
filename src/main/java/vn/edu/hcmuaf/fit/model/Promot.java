package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class Promot extends  BaseModel{

    private String name;
    private String desc;
    private String img;
    private Timestamp killed_at;

    public Promot() {
        super();

    }
}
