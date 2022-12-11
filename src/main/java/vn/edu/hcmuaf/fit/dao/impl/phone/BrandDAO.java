package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Sale;

import java.sql.Timestamp;
import java.util.List;

public class BrandDAO extends AbstractDAO<Brand> {
    public BrandDAO(String table) {
        super(table);
    }

    public int insertBrand(Brand br) {
        br.setCreated_at(new Timestamp(System.currentTimeMillis()));
        br.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into brands (name,logo,created_at,updated_at)" +
                        " values(:t.name,:t.logo,:t.created_at,:t.updated_at)",
                br);
    }


    public void deleteBrand(Brand b) {
        delete("delete from brands  where id = :t.id" , b);
    }
    public void updateBrand(Brand b) {
        b.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update brands set name = :t.name,logo = :t.logo,updated_at = :t.updated_at where id = :t.id", b);


    }

}
