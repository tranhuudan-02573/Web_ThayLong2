package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.util.Optional;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Vote extends Base<Vote> implements Serializable {
    private Integer userId;
    private Integer commentId;
    private Boolean like;

    public User _user() {
        return new AbstractDAO<User>("users").get(" and id =" + this.userId, User.class, null).get();

    }

    public Review _review() {
        return new AbstractDAO<Review>("reviews").get(" and id =" + this.commentId, Review.class, null).get();

    }


}
