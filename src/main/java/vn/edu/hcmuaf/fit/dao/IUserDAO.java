package vn.edu.hcmuaf.fit.dao;

import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import vn.edu.hcmuaf.fit.model.Pay;
import vn.edu.hcmuaf.fit.model.Phone;
import vn.edu.hcmuaf.fit.model.User;

import java.util.List;

public interface IUserDAO extends  GenericDAO<User> {

    List<Phone> getCartByIdUser(int id);
    List<Phone> getWishListByIdUser(int id);
    List<Pay> getPayByIdUer(int id);


    
//    @SqlQuery("SELECT * FROM Cars WHERE name :name and password = :password and status = : status  and active = :active")
//    User findByUPSA(@Bind("name") String name, @Bind("password") String password,@Bind("status") String status,@Bind("active") boolean active);


}
