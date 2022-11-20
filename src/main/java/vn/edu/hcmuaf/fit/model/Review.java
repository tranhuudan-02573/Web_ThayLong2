package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;
@Data
public class Review {
    private int id;
    private Timestamp create_at;
    private Timestamp updated_at;
    private  String content;
    private int star;
    private  boolean isQuestion;
    private String title;

    List<Reply> replis;

    void addReply(Reply r){
        replis.add(r);
    }
    public Review() {
        super();

    }




}
