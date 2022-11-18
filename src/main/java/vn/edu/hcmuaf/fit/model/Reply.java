package vn.edu.hcmuaf.fit.model;

import java.sql.Timestamp;

public class Reply  extends AModel {
    private int idUser;
    private int idphone_review;
    private boolean isLike;
    private String content;
    public Reply() {
        super();

    }
    public Reply(int id, Timestamp create_at, Timestamp updated_at) {
        super(id, create_at, updated_at);
    }
}
