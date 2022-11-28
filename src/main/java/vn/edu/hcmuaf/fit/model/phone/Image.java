/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Image implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private int phoneId;
    private String link;
    private String desc;


}
