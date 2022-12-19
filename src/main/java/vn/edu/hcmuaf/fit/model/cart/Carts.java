package vn.edu.hcmuaf.fit.model.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Carts {
    private Map<CartItem, Integer> cartItemIntegerMap = new HashMap<>();

    public CartItem get(CartItem cartItem) {
        List<CartItem> keys = new ArrayList<>(cartItemIntegerMap.keySet());

        for (CartItem ci : keys
        ) {
            if (ci.getPhone().getId() == cartItem.getPhone().getId() && ci.getColor().getId() == cartItem.getColor().getId())
                return ci;

        }


        return null;
    }

    public void add(CartItem cartItem) {

        if (get(cartItem) != null) {
            get(cartItem).setQuantity(get(cartItem).getQuantity() + cartItem.getQuantity());
        } else {
            cartItemIntegerMap.put(cartItem, cartItem.getQuantity());
        }

    }

    public void remove(CartItem cartItem) {
        if (get(cartItem) != null) cartItemIntegerMap.remove(cartItem);
    }


}
