package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.*;

@Data
public class Phone implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private int price;
    private int typeId;
    private String content;
    private int specId;
    private int stateId;
    private String desc;
    private int total;
    private String thumbnail;
    private int saleId;
    private Sale sale;
    private State state;
    private Set<PhoneSpec> specList = new HashSet<>();
    private Set<Color> colorList = new HashSet<>();
    private Type type;
    private Set<PhoneCap> capList = new HashSet<>();
    private Set<PhonePromot> promotList = new HashSet<>();
    private int brandId;
    private int modelId;
    private Brand brand;
    private Model model;
    private Set<Image> imageList = new HashSet<>();
    private Map<Integer, Review> reviews = new HashMap<>();
    public void addReview(int id, Review r) {
        reviews.put(id, r);
    }
    public void addCap(PhoneCap pc) {
        capList.add(pc);
    }

    public void addImage(Image img) {
        imageList.add(img);
    }

    public void addColor(Color color) {
        colorList.add(color);
    }

    public void addPromot(PhonePromot promot) {
        promotList.add(promot);
    }

    public void addSpec(PhoneSpec spec) {
        specList.add(spec);
    }

}
