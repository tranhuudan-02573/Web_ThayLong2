package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.CapDAO;
import vn.edu.hcmuaf.fit.model.review.Review;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Getter
@Setter
public class Phone extends Base<Phone> implements Serializable {
    private String name;
    private Integer price;
    private Integer typeId;
    private String content;
    private Integer specId;
    private String desc;
    private Integer total;
    private String thumbnail;
    private Integer saleId;
    private Integer capId;
    private String status;
    private Integer updated_by;
    private Integer brandId;
    private Integer modelId;
    private Integer created_by;
    private Integer deleted_by;
    private Timestamp deleted_at;

    public List<Image> _images() {
        return new AbstractDAO<Image>("images").list(" and phoneId =" + this.id, Image.class, null, null);
    }

    public List<Spec> _specs() {
        return new AbstractDAO<Spec>("phone_spec").list(" and phoneId =" + this.id, Spec.class, null, null);
    }

    public List<Color> _colors() {
        return new AbstractDAO<Color>("phone_color").list(" and phoneId =" + this.id, Color.class, null, null);
    }

    public List<Promot> _promots() {
        return new AbstractDAO<Promot>("phone_promot").list(" and phoneId =" + this.id, Promot.class, null, null);
    }

    public List<Cap> _caps() {
        return new AbstractDAO<Cap>("phone_cap").list(" and phoneId =" + this.id, Cap.class, null, null);
    }

    public Sale _sale() {
        return new AbstractDAO<Sale>("sales").get(" and id=" + this.saleId, Sale.class, null);
    }

    public Brand _brand() {
        return new AbstractDAO<Brand>("brands").get(" and id=" + this.brandId, Brand.class, null);
    }

    public Model _model() {
        return new AbstractDAO<Model>("models").get(" and id=" + this.modelId, Model.class, null);
    }

    public Type _type() {
        return new AbstractDAO<Type>("types").get(" and id=" + this.typeId, Type.class, null);
    }

    public Cap _cap() {
        return new CapDAO("caps").get(" and id = " + this.capId, Cap.class, null);
    }

}
