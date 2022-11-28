package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Image;

public class ColorDAO extends AbstractDAO<Color> {


    public void insertColor(Color color) {
        insert("insert into phone_color (name,phoneId,img,created_at,updated_at,total) values(:t.name,:t.phoneId,:t.img,:t.created_at,:t.updated_at,t.total)",
                color);
    }

}
