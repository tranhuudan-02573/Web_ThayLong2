package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.order.Code;

import java.sql.Timestamp;

public class CodeDAO extends AbstractDAO<Code> {
    public CodeDAO() {
        super("codes");
    }

    public int save(Code a) {
        a.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        a.setCreated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId(" insert into codes(code,value,start_at,end_at,unit)" +
                " values (:t.code,:t.value,:t.start_at,:t.end_at,:t.unit)", a);
    }

    public boolean update(Code a) {
        a.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return update(" update codes set code =:t.code,value=:t.value,start_at=:t.start_at,end_at=:t.end_at,unit=:t.unit where id=:t.id", a);
    }

    public void delete(Code a) {
        update(" delete from codes where id=:t.id ", a);
    }

}
