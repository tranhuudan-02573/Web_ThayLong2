package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.*;
import vn.edu.hcmuaf.fit.model.phone.Review;

import java.util.*;

public class PhoneDAO extends AbstractDAO<Phone> {

    final String SELECT_ONE_ID = " and p.id = :id";
    final String SELECT_PRICE = " and p.price = :price";
    final String SELECT_SALE = " and p.saleId = :saleId";
    final String SELECT_BRAND = " and p.brandId = :brandId";
    final String SELECT_MODEL = " and p.modelId = :modelId";
    final String SELECT_NAME = " and p.name like CONCAT(:name, '%')";
    final String SELECT_DESC = "  and p.desc like  CONCAT('%',:desc, '%')";
    final String SELECT_TYPE = " and p.typeId = :typeId";
    final String SELECT_STATE = " and p.stateId = :stateId";
    public Phone getPhoneById(int id) {
        Map<String, Object> o = new HashMap<>();
        o.put("id", id);
        List<Phone> phones = joinPhone(SELECT_ONE_ID, Phone.class, o);
        if (phones.size() > 1 || phones.isEmpty()) return null;
        return phones.get(0);
    }

    public List<Phone> getByPrice(long price) {

        HashMap<String, Object> o = new HashMap<>();
        o.put("price", price);


        return joinPhone(SELECT_PRICE, Phone.class, o);
    }

    public List<Phone> getPhoneBy(HashMap<String, Object> o) {


        return joinPhone(SELECT_NAME + SELECT_PRICE, Phone.class, o);
    }


    public List<Phone> getByName(String name) {
        Map<String, Object> o = new HashMap<>();
        o.put("name", name );

        return joinPhone(SELECT_NAME, Phone.class, o);

    }

    public List<Phone> getByDesc(String desc) {
        Map<String, Object> o = new HashMap<>();
        o.put("name", desc );

        return joinPhone(SELECT_DESC, Phone.class, o);

    }

    public List<Phone> getPhoneByPay(int id) {
        List<Phone> rs = new LinkedList<>();

        return rs;


    }

    public List<Promot> getPromotById(int id) {
        List<Promot> rs = new LinkedList<>();


        return rs;

    }


    public List<Model> getModelByBrand(int id) {
        List<Model> rs = new LinkedList<>();


        return rs;


    }


    public List<Color> getColorById(int id) {
        List<Color> rs = new LinkedList<>();

        return rs;

    }

    public List<Review> getReviewById(int id) {
        List<Review> rs = new LinkedList<>();


        return rs;

    }

    public static void main(String[] args) {
//        System.out.println(new PhoneDAO().joinPhone("", Phone.class, null).get(0).getPromotList());
//        System.out.println(new PhoneDAO().joinPhone("", Phone.class, null).get(0).getImageList().size());
//        System.out.println(new PhoneDAO().joinPhone("", Phone.class, null).get(0).getSpecList());
//        System.out.println(new PhoneDAO().joinPhone("", Phone.class, null).get(0).getSpecList().size());
//        System.out.println(new PhoneDAO().joinPhone("", Phone.class, null).get(0).getCapList());
//        System.out.println(new PhoneDAO().getPhoneById(2));
        HashMap<String, Object> o = new HashMap<>();
        o.put("name", "dt");
        o.put("price", 2000);
//        o.put("dnas", "djsad");


        System.out.println(new PhoneDAO().getPhoneBy(o));
//        System.out.println(new PhoneDAO().getPhoneById(2));
//        System.out.println(new PhoneDAO().getByPrice(2000));
//        System.out.println(new PhoneDAO().getByName("dt"));
    }


}
