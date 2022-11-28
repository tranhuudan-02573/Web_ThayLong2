package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Image;

public class ImageDAO extends AbstractDAO<Image> {


    public void insertImage(Image img) {
        insert("insert into images (link,`desc`,phoneId,created_at,updated_at) values(:t.link,:t.desc,:t.phoneId,:t.created_at,:t.updated_at)",
                img);
    }

}
