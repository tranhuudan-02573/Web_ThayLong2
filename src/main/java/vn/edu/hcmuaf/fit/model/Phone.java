package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Data
public class Phone implements Serializable {
    private int id;
    private String name;
    private int price;
    private String desc;
    private String shortDesc;

    List<Color> colors;

    List<Image> images;

    List<Cap> caps;

    Map<String,String> spec ;

    boolean isIM;



    public Phone(){

    }
    public Phone(int id, String name, int price, String desc, String shortDesc, int total, String status) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.desc = desc;
        this.shortDesc = shortDesc;
        this.total = total;
        this.status = status;
    }

    private int total;

    private String status;



}
