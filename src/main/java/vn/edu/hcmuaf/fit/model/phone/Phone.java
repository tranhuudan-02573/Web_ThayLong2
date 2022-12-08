package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.model.review.Review;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Phone implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private Integer price;
    private Integer typeId;
    private String content;
    private Integer specId;
    private String desc;
    private Integer total;
    private String thumbnail;
    private Integer saleId;
    private Sale sale;
    private Integer capId;
    private Cap cap;
    private  Set<PhoneSpec> specList = new HashSet<>();
    private Set<PhoneColor> colorList = new HashSet<>();
    private Type type;
    private Set<PhoneCap> capList = new HashSet<>();
    private Set<PhonePromot> promotList = new HashSet<>();
    private Integer brandId;
    private Integer modelId;
    private Brand brand;
    private Model model;
    private Integer created_by;
    private Set<Image> imageList = new HashSet<>();
    private Map<Integer, Review> reviews = new HashMap<>();
    public void addReview(Integer id, Review r) {
        reviews.put(id, r);
    }
    public void addCap(PhoneCap pc) {
        capList.add(pc);
    }

    public void addImage(Image img) {
        imageList.add(img);
    }

    public void addColor(PhoneColor color) {
        colorList.add(color);
    }

    public void addPromot(PhonePromot promot) {
        promotList.add(promot);
    }

    public void addSpec(PhoneSpec spec) {
        specList.add(spec);
    }

    public static void main(String[] args) {
        Phone p =new Phone();
        p.setName("hdkajs");
        System.out.println(p.getImageList().isEmpty());
    }

}
