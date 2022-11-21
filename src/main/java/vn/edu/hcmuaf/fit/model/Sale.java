package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;
@Data
public class Sale extends  BaseModel{
    private String name;
    private String desc;
    private String img;

    List<Phone> phoneSales;

    private Timestamp killed_at;


    void addPhone(Phone p){
        phoneSales.add(p);
    }
    public Sale() {
        super();

    }



}
