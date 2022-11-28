package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Color  implements Serializable {
    private String name;
    private int phoneId;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String img;
    private int total;

    public Color() {
    }

}
