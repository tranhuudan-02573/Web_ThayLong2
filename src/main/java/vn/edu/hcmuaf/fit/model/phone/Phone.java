package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

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
    private Integer phone_stateId;
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

    public PhoneState _phoneState() {
        return new AbstractDAO<PhoneState>("phone_states").get(" and id=" + this.phone_stateId, PhoneState.class, null);
    }

    public List<Image> _images() {
        return new AbstractDAO<Image>("images").list(" and phoneId =" + this.id, Image.class, null, null);
    }

    public List<PhoneSpec> _specs() {
        return new AbstractDAO<PhoneSpec>("phone_spec").list(" and phoneId =" + this.id, PhoneSpec.class, null, null);
    }

    public List<PhoneColor> _colors() {
        return new AbstractDAO<PhoneColor>("phone_color").list(" and phoneId =" + this.id, PhoneColor.class, null, null);
    }

    public List<PhonePromot> _promots() {
        return new AbstractDAO<PhonePromot>("phone_promot").list(" and phoneId =" + this.id, PhonePromot.class, null, null);
    }

    public List<PhoneCap> _caps() {
        return new AbstractDAO<PhoneCap>("phone_cap").list(" and phoneId =" + this.id, PhoneCap.class, null, null);
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
