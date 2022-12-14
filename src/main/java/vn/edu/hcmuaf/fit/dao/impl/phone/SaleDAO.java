package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.phone.Type;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;
@ManagedBean
public class SaleDAO extends AbstractDAO<Sale> {


    public SaleDAO(String table) {
        super(table);
    }

    public int insertSale(Sale pp) {
            pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
            pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into sales (name,`desc`,img,created_at,updated_at,end_at,start_at)" +
                        " values(:t.name,:t.desc,:t.img,:t.created_at,:t.updated_at,:t.end_at,:t.start_at)",
                pp);
    }

    public void deleteSale(Sale c) {
        delete("delete from sales  where id = :t.id" , c);
    }


    public void updateSale(Sale c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update sales set name = :t.name,`desc`=:t.desc,img=:t.img,  updated_at = :t.updated_at, end_at = :t.end_at, start_at =:t.start_at  where id = :t.id", c);


    }

    public static void main(String[] args) {
        Sale s = new Sale(9,"20/10","sale lớn ","img",null,null, 10);

//        System.out.println(new SaleDAO("sales").insertSale(s));


//        new SaleDAO("sales").deleteSale(s);

        new SaleDAO("sales").updateSale(s);
    }

}
