package vn.edu.hcmuaf.fit.dao;

import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import vn.edu.hcmuaf.fit.model.User;

public interface IUserDAO {


    @SqlQuery("SELECT * FROM Cars WHERE name :name and password = :password and status = : status  and active = :active")
    User findByUPSA(@Bind("name") String name, @Bind("password") String password,@Bind("status") String status,@Bind("active") boolean active);


}
