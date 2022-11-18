package vn.edu.hcmuaf.fit.model;

import java.sql.Timestamp;
import java.util.List;

public class Sale extends AModel {
    private String name;
    private String desc;
    private String img;

    List<Phone> phoneSales;

    private Timestamp killed_at;
    public Sale() {
        super();

    }



}
