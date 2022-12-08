package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Sale  implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String desc;
    private String img;


    private Timestamp end_at;
    private Timestamp start_at;


    public Sale() {
    }


}
