package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.model.Phone;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PhoneDAO extends AbstractDAO<Phone> {
    private static PhoneDAO install;

    public PhoneDAO() {

    }

    public static PhoneDAO getInstall() {
        if(install==null) install= new PhoneDAO();
        return install;
    }



    List<Phone> getAll(){

        return null;
    }

    List<Phone> getByPrice(long price){

        return null;
    }

    public static void main(String[] args) {


        Map<String, Object> o = new HashMap<>();
//        o.put("id", 1);
        o.put("name","dien thoai 1");

        Map<String, Object> o2 = new HashMap<>();
        o2.put("id", 5);

//        new PhoneDAO().delete("delete from phones where id = :id",Phone.class,o2);

        System.out.println(new PhoneDAO().findAll("select phones.*,roles.name from phones inner join roles ", Phone.class));
//       new PhoneDAO().insert("insert into phones (name) value ('dt123')");
    }


}
