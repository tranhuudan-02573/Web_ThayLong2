package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.GenericDAO;
import vn.edu.hcmuaf.fit.dao.IPhoneDAO;
import vn.edu.hcmuaf.fit.model.*;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class PhoneDAO extends AbstractDAO<Phone> implements IPhoneDAO {


    @Override
    public List<Phone> getByPrice(long price) {

        return null;
    }

    @Override
    public Phone getPhoneById(int id) {

        return null;
    }


    @Override
    public Map<String, String> getSpecbyId(int id) {

        Map<String, String> rs = new HashMap<>();


        return rs;
    }

    @Override
    public List<Phone> getPhoneBySale(int id) {
        List<Phone> rs = new LinkedList<>();


        return rs;

    }

    @Override
    public List<Phone> getPhoneByPay(int id) {
        List<Phone> rs = new LinkedList<>();

        return rs;


    }

    @Override
    public List<Promot> getPromotById(int id) {
        List<Promot> rs = new LinkedList<>();


        return rs;

    }

    @Override
    public List<String> getImageById(int id) {
        List<String> rs = new LinkedList<>();

        return rs;

    }

    @Override
    public List<Phone> getPhoneByBrand(int id) {
        List<Phone> rs = new LinkedList<>();


        return rs;
    }

    @Override
    public List<Model> getModelByBrand(int id) {
        List<Model> rs = new LinkedList<>();


        return rs;


    }

    @Override
    public List<Phone> getPhoneByModel(int id) {
        List<Phone> rs = new LinkedList<>();

        return rs;


    }


    @Override
    public List<Color> getColorById(int id) {
        List<Color> rs = new LinkedList<>();

        return rs;

    }

    @Override
    public List<Review> getReviewById(int id) {
        List<Review> rs = new LinkedList<>();


        return rs;

    }


    public static void main(String[] args) {


        Map<String, Object> o = new HashMap<>();
//        o.put("id", 1);
        o.put("name", "dien thoai 1");

        Map<String, Object> o2 = new HashMap<>();
        o2.put("id", 5);

//        new PhoneDAO().delete("delete from phones where id = :id",Phone.class,o2);

        System.out.println(new PhoneDAO().findAll("select * from phones", Phone.class, null));
//       new PhoneDAO().insert("insert into phones (name) value ('dt123')");
    }


}
