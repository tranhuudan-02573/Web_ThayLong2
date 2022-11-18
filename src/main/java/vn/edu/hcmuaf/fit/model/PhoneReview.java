package vn.edu.hcmuaf.fit.model;

import java.sql.Timestamp;

public class PhoneReview  extends AModel {
    private int idUser;
    private int idPhone;
    private  String content;
    private int star;
    private  boolean isQuestion;
    private String title;
    public PhoneReview() {
        super();

    }
    public PhoneReview(int id, Timestamp create_at, Timestamp updated_at) {
        super(id, create_at, updated_at);
    }
}
