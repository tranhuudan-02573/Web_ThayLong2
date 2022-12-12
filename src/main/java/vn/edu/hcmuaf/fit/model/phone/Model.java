package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Model  implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String img;
    private int brandId;

    public Model(String name, String img, int brandId) {
        this.name = name;
        this.img = img;
        this.brandId = brandId;
    }

    public Model(int id, String name, String img, int brandId) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.brandId = brandId;
    }
}
