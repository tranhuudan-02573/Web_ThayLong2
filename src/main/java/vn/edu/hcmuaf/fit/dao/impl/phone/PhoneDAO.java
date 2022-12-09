package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.*;
import vn.edu.hcmuaf.fit.model.review.Review;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;
import java.util.*;
@ManagedBean
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

    public PhoneDAO(String table) {
        super(table);
    }

    public Phone getPhoneById(int id) {
        Map<String, Object> o = new HashMap<>();
        o.put("id", id);
        List<Phone> phones = joinPhone(SELECT_ONE_ID, Phone.class, o);
        if (phones.size() > 1 || phones.isEmpty()) return null;
        return phones.get(0);
    }

    public List<Phone> getAll(){
        return joinPhone("", Phone.class,null);
    }

    public void updatePhone(Phone phone) {
        phone.setUpdated_at(new Timestamp(System.currentTimeMillis()));

        update("update phones set `name` = :t.name," +
                "typeId=:t.typeId," +
                "price=:t.price," +
                "content=:t.content," +
                "created_at=:t.created_at," +
                "updated_at=:t.updated_at," +
                "total=:t.total," +
                "thumbnail=:t.thumbnail," +
                "`desc`=:t.desc," +
                "stateId=:t.stateId," +
                "brandId=:t.brandId," +
                "modelId=:t.modelId," +
                "saleId=:t.saleId " +
                "  where id = :t.id", phone);
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
        o.put("name", name);

        return joinPhone(SELECT_NAME, Phone.class, o);

    }

    public List<Phone> getByDesc(String desc) {
        Map<String, Object> o = new HashMap<>();
        o.put("name", desc);

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


    public List<PhoneColor> getColorById(int id) {
        List<PhoneColor> rs = new LinkedList<>();

        return rs;

    }

    public List<Review> getReviewById(int id) {
        List<Review> rs = new LinkedList<>();


        return rs;

    }

    public void deletePhone(Phone phone) {


        delete("delete from phones where id = :t.id", phone);


    }

    public int savePhone(Phone phone) {
        phone.setCreated_at(new Timestamp(System.currentTimeMillis()));
        phone.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into phones (`name`,typeId,price,content,created_at,updated_at,total,thumbnail,`desc`,stateId,brandId,modelId,saleId,capId,created_by) " +
                "values (:t.name,:t.typeId,:t.price,:t.content,:t.created_at,:t.updated_at,:t.total,:t.thumbnail,:t.desc,:t.stateId,:t.brandId,:t.modelId,:t.saleId,:t.capId,:t.created_by)", phone);


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


        Phone phone = new Phone();
        phone.setBrandId(2);
        phone.setModelId(5);

        Image image = new Image();
        image.setLink("em be thui iphone ma kim cuong");
        Image image2 = new Image();
        image2.setLink("em be thui 2 anh 2 ");
        PhoneColor color = new PhoneColor();
        PhoneColor color2 = new PhoneColor();
        PhoneColor color3 = new PhoneColor();

        phone.addImage(image);
        phone.addImage(image2);
        phone.addColor(color);
        phone.addColor(color2);
        phone.addColor(color3);

//        System.out.println(phone.getName());
//        System.out.println(phone);
//        new PhoneDAO().insertPhone(phone);
//       new PhoneDAO().insert("insert into phones (`name`,typeId,price,content,created_at,updated_at,total,thumbnail,`desc`,stateId,brandId,modelId,saleId) " +
//                "values (:t.name,:t.typeId,:t.price,:t.content,:t.created_at,:t.updated_at,:t.total,:t.thumbnail,:t.desc,:t.stateId,:t.brandId,:t.modelId,:t.saleId)", phone);

        Phone p = new PhoneDAO("phones").getPhoneById(2);
        p.setName("tran huu dan");
//        new PhoneDAO().updatePhone(p);
        PhonePromot pr = new PhonePromot();
        pr.setDesc("dsa");
        p.getPromotList().add(pr);

        Phone pp = new Phone();
        pp.setName("kkk123");

        System.out.println( new PhoneDAO("phones").getPhoneById( new PhoneDAO("phones").savePhone(pp)));
//        new PhoneDAO().updatePhone(p);
//        System.out.println(new PhoneDAO().getAll());
//        System.out.println(new PhoneDAO().getPhoneBy(o));
//        System.out.println(new PhoneDAO().getPhoneById(2));
//        System.out.println(new PhoneDAO().getByPrice(2000));
//        System.out.println(new PhoneDAO().getByName("dt"));
    }


}
