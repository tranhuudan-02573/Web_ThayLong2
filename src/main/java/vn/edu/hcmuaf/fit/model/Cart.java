package vn.edu.hcmuaf.fit.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class Cart extends AModel {
    private List<Phone> lsPhone = new ArrayList<>();
    private int quantity;

    private String status;
    private String save;
    private int idPay;



    public Cart() {
        super();

    }

    public void addPhone(Phone phone){
        this.lsPhone.add(phone);
    }
}
