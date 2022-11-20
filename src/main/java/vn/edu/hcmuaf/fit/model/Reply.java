package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Reply {private int id;
    private Timestamp create_at;
    private Timestamp updated_at;

    private boolean isLike;
    private String content;
}
