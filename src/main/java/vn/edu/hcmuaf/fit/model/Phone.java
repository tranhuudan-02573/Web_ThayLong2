package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Data
public class Phone extends BaseModel implements Serializable {
    private String name;
    private int price;
    private String desc;
    private String shortDesc;
    private String cap;
    private int total;
    private String status;
    private String thumbnail;

    List<Color> colorList = new LinkedList<>();



}
