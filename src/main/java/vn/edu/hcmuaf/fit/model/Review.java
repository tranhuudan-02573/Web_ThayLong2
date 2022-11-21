package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;
@Data
public class Review extends  BaseModel{
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
