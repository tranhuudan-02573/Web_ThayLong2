package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
@Data
public class Cart extends  BaseModel{
    private List<Phone> phones = new ArrayList<>();
    private int quantity;

    private String status;
    private String save;
    private Pay pay;

    void addPhone(Phone phone){
        phones.add(phone);
    }

    public Cart() {
        super();

    }

}
