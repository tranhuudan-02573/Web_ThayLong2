package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.io.Serializable;
@Data
public class Phone implements Serializable {
    private int id;
    private String name;
    private int price;
    private String desc;
    private String shortDesc;
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
