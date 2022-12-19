package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.user.Customer;

import java.sql.Timestamp;

public class CustomerDAO extends AbstractDAO<Customer> {
    public CustomerDAO(String table) {
        super(table);
    }

    public int save(Customer customer) {
        customer.setCreated_at(new Timestamp(System.currentTimeMillis()));
        customer.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId(" insert into customers (name,email,phone,address,gender,created_at,updated_at) " +
                "values (:t.name,:t.email,:t.phone,:t.address,:t.gender,:t.created_at,:t.updated_at)", customer);

    }
}
