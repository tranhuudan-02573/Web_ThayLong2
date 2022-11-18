package vn.edu.hcmuaf.fit.model;

import java.sql.Timestamp;

public class Pay extends AModel{
    private String payment;
    private  String address;
    private String name;
    private String phone;
    private  String email;
    private int status;
    private int idCode;
    private int total;
    public Pay() {
        super();

    }
    public Pay(int id, Timestamp create_at, Timestamp updated_at) {

        super(id, create_at, updated_at);
    }

}
