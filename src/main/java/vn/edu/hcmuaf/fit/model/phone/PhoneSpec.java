/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.phone;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.phone.SpecDAO;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PhoneSpec implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private String value;
    private Integer specId;
    private Integer phoneId;
    private Spec spec;
    public Spec _spec() {
        return new SpecDAO("specs").get(" id = " + this.getSpecId(), Spec.class, null);
    }
}
