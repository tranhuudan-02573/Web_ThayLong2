package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.phone.Type;

import javax.annotation.ManagedBean;

@ManagedBean
public class TypeDAO extends AbstractDAO<Type> {


    public int insertType(Type pp) {
      return  insertWithId("insert into types (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }

}
