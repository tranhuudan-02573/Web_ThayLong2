package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Color extends  BaseModel{
    private String name;
    private String img;
    private int total;

    public Color() {
        super();
    }

}
