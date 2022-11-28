package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Promot  implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;

    private String name;
    private String desc;
    private String img;

    public Promot() {

    }
}