package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Cap;
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
        return insertWithId("insert into brands (name,logo,created_at,updated_at, country)" +
                        " values(:t.name,:t.logo,:t.created_at,:t.updated_at, :t.country)",
                br);
    }


    public void deleteBrand(Brand b) {
        delete("delete from brands  where id = :t.id" , b);
    }
    public void updateBrand(Brand b) {
        b.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update brands set name = :t.name,logo = :t.logo,updated_at = :t.updated_at, country = :t.country  where id = :t.id", b);

    }
    public static void main(String[] args) {
//        Brand s = new Brand(11,"xiaomi", "jfdshf", "Viet Nam");
//
//        System.out.println(new BrandDAO("brands").insertBrand(s));
//        new BrandDAO("brands").deleteBrand(s);
        Brand s1 = new Brand(13,"xiaomi", "anhhhiu", "Viet Nam");
        new BrandDAO("brands").updateBrand(s1);
    }
}
