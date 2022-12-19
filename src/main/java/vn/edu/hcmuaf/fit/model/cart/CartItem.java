package vn.edu.hcmuaf.fit.model.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Phone;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartItem {

    private Phone phone;
    private Color color;
    private int quantity;
    private int price;
    private boolean isSave;

    public CartItem(Phone phone, Color color, int price, boolean isSave) {
        this.phone = phone;
        this.color = color;
        this.price = price;
        this.isSave = isSave;
    }
}
