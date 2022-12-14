package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
<<<<<<< Updated upstream
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Model;
import vn.edu.hcmuaf.fit.model.phone.SpecType;
import vn.edu.hcmuaf.fit.model.phone.Type;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean
=======
import vn.edu.hcmuaf.fit.model.phone.Model;

>>>>>>> Stashed changes
public class ModelDAO extends AbstractDAO<Model> {


    public ModelDAO(String table) {
        super(table);
    }

<<<<<<< Updated upstream
    public int insertModel(Model pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
      return  insertWithId("insert into models (name,created_at,updated_at, img, brandId)" +
                        " values(:t.name,:t.created_at,:t.updated_at, :t.img, :t.brandId)",
                pp);
    }
    public void deleteModel(Model c) {
        delete("delete from models  where id = :t.id" , c);
    }


    public void updateModel(Model c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update models set name = :t.name,updated_at = :t.updated_at, img = :t.img, brandId = :t.brandId where id = :t.id", c);
    }

    public static void main(String[] args) {
        Model s = new Model(6, "samsung", "anh nhỏ", 2);

//
//        new ModelDAO("models").updateModel(s);
        new ModelDAO("models").deleteModel(s);
//        System.out.println(new ModelDAO("models").insertModel(s));
    }
=======




>>>>>>> Stashed changes

}
