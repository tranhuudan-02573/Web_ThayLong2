/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

/**
 * @author giaki
 */
@Data
public class BaseModel {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;

    public BaseModel() {
    }


}
