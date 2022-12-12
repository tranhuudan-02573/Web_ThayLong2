package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Model;
import vn.edu.hcmuaf.fit.model.phone.PhoneColor;
import vn.edu.hcmuaf.fit.model.phone.Color;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;
import java.util.Set;
@ManagedBean

public class ColorDAO extends AbstractDAO<Color> {


    public ColorDAO(String table) {
        super(table);
    }

    public int insertColor(Color pp) {
        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into colors (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }

    public void deleteColor(Color c) {
        delete("delete from colors  where id = " + c.getId(), c);

    }

    public void updateColor(Color c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update colors set name = :t.name,updated_at = :t.updated_at where id = :t.id", c);


    }

    public static void main(String[] args) {
        Color s = new Color("đỏ");

        System.out.println(new ColorDAO("colors").insertColor(s));
    }
}
