package vn.edu.hcmuaf.fit.registration.token;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.sql.Timestamp;
import java.util.Optional;

public class ConfirmationTokenRepository extends AbstractDAO<ConfirmationToken> {


    public ConfirmationTokenRepository(String table) {
        super(table);
    }

    ConfirmationToken findByToken(String token){
        ConfirmationToken c = new ConfirmationToken();
        c.setToken(token);

        return get(" and token =:t.token", ConfirmationToken.class,c);

    }

    void updateConfirmedAt(String token,
                      Timestamp confirmedAt){
    update("update confirmationtoken set confirmed_at ="+new Timestamp(System.currentTimeMillis())+" where token ="+token,null);




    }

    public void save(ConfirmationToken token) {

        token.setCreated_at(new Timestamp(System.currentTimeMillis()));
        token.setExpired_at(new Timestamp(System.currentTimeMillis()+900000));
        insert("insert into confirmationtoken(token,created_at,expired_at,confirmed_at) values (:t.token,:t.created_at,:t.expired_at,:t.confirmed_at) ",token);
    }
}
