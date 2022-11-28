package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.phone.Type;

public class SaleDAO extends AbstractDAO<Sale> {


    public void insertSale(Sale pp) {
        insert("insert into sales (name,desc,img,created_at,updated_at,killed_at)" +
                        " values(:t.name,:t.desc,:t.img,:t.created_at,:t.updated_at,:t.killed_at)",
                pp);
    }

}
