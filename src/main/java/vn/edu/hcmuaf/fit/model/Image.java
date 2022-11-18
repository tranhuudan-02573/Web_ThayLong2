package vn.edu.hcmuaf.fit.model;

import java.sql.Timestamp;

public class Image extends  AModel{
    private String link;
    private String desc;
    private Phone phone;
    public Image() {
        super();

    }
    public Image(int id, Timestamp create_at, Timestamp updated_at) {

        super(id, create_at, updated_at);
    }
    public void setPhoneImg(Phone phone){
        this.phone=phone;
    }
}

