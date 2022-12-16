package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
public class Sale  implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String desc;
    private String img;
    private Integer value;
    private String unit;
    private Timestamp end_at;
    private Timestamp start_at;

    public Sale(String name, String desc, String img, Timestamp end_at, Timestamp start_at, Integer value) {
        this.name = name;
        this.desc = desc;
        this.img = img;
        this.end_at = end_at;
        this.start_at = start_at;
        this.value = value;
    }

    public Sale(int id, String name, String desc, String img, Timestamp end_at, Timestamp start_at, Integer value) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.img = img;
        this.end_at = end_at;
        this.start_at = start_at;
        this.value = value;
    }
}
