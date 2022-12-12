package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Brand  implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String logo;
    private String country;

    public Brand(String name, String logo, String country) {
        this.name = name;
        this.logo = logo;
        this.country = country;
    }

    public Brand(int id, String name, String logo, String country) {
        this.id = id;
        this.name = name;
        this.logo = logo;
        this.country = country;
    }
}
