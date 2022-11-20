package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Data
public class Phone implements Serializable {
    private int id;
    private Timestamp create_at;
    private Timestamp updated_at;
    private String name;
    private int price;
    private String desc;
    private String shortDesc;
    private String cap;
    private int total;
    private String status;
    private List<Color> colors = new LinkedList<>();
    private List<String> images = new LinkedList<>();
    private List<String> caps = new LinkedList<>();
    private Map<String, String> spec = new HashMap<>();
    private boolean isIM;
    private List<Review> reviews = new LinkedList<>();

    private Brand brand;

    private Model model;

    private List<Promot> promots = new LinkedList<>();

    public void addColor(Color c) {
        colors.add(c);
    }

    public void addImage(String img) {
        images.add(img);
    }

    public void addCap(String cap) {
        caps.add(cap);
    }

    public void addReview(Review r) {
        reviews.add(r);
    }

    public void addPromot(Promot p) {
        promots.add(p);
    }

    public void putSpec(String key, String value) {

        spec.put(key, value);

    }

    public Phone() {

    }

}
