package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;

import java.sql.Timestamp;

public class PhoneDAO extends AbstractDAO<Phone> {
    public PhoneDAO() {
        super("phones");
    }

    public int savePhone(Phone phone) {
        phone.setCreated_at(new Timestamp(System.currentTimeMillis()));
        phone.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into phones (`name`,typeId,price,content,created_at,updated_at,total,thumbnail,`desc`,brandId,modelId,saleId,capId,created_by,updated_by) " +
                "values (:t.name,:t.typeId,:t.price,:t.content,:t.created_at,:t.updated_at,:t.total,:t.thumbnail,:t.desc,:t.brandId,:t.modelId,:t.saleId,:t.capId,:t.created_by,:t.updated_by)", phone);
    }

    public void deletePhone(Phone phone) {
        delete("delete from phones where id = :t.id", phone);
    }

    public void updatePhone(Phone phone) {
        phone.setUpdated_at(new Timestamp(System.currentTimeMillis()));

        update("update phones set `name` = :t.name," +
                "typeId=:t.typeId," +
                "price=:t.price," +
                "content=:t.content," +
                "created_at=:t.created_at," +
                "updated_at=:t.updated_at," +
                "total=:t.total," +
                "thumbnail=:t.thumbnail," +
                "`desc`=:t.desc," +
                "stateId=:t.stateId," +
                "brandId=:t.brandId," +
                "modelId=:t.modelId," +
                "saleId=:t.saleId " +
                "  where id = :t.id", phone);
    }

    public void deleteSoftPhone(Phone phone) {
        phone.setDeleted_at(new Timestamp(System.currentTimeMillis()));
        update("update phones set status = 'da xoa' , deleted_at =:t.deleted_at,delete_by=:t.delete_by where id = :t.id ", phone);
    }

    public void delete(Phone phone) {
        update(" delete from phones where id=:t.id", phone);
    }
}
