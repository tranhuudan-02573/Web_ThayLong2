package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Brand extends  BaseModel{
    private String name;
    private String logo;
    private String country;

}
