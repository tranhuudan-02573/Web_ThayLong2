package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Reply extends  BaseModel{

    private boolean isLike;
    private String content;
}
