package vn.edu.hcmuaf.fit.dao;

import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import vn.edu.hcmuaf.fit.model.*;

import java.util.List;
import java.util.Map;

public interface IPhoneDAO extends GenericDAO<Phone> {


    List<Phone> getByPrice(long price);

    Phone getPhoneById(int id);

    Map<String, String> getSpecbyId(int id);

    List<Phone> getPhoneBySale(int id);

    List<Phone> getPhoneByPay(int id);

    List<Promot> getPromotById(int id);

    List<String> getImageById(int id);

    List<Phone> getPhoneByBrand(int id);

    List<Model> getModelByBrand(int id);

    List<Phone> getPhoneByModel(int id);

    List<Color> getColorById(int id);

    List<Review> getReviewById(int id);

//    @SqlQuery("SELECT * FROM Cars WHERE name :name and password = :password and status = : status  and active = :active")
//    User findByUPSA(@Bind("name") String name, @Bind("password") String password,@Bind("status") String status,@Bind("active") boolean active);


}
