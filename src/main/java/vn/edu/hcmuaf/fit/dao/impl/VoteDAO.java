package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.review.Vote;

import java.sql.Timestamp;

public class VoteDAO extends AbstractDAO<Vote> {
    public VoteDAO() {
        super("votes");
    }

    public void save(Vote v) {
        v.setCreated_at(new Timestamp(System.currentTimeMillis()));
        v.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        insert(" insert into votes(userId,commentId,`like`,created_at,updated_at) values(:t.userId,:t.commentId,:t.like,:t.created_at,:t.updated_at)", v);
    }

}
