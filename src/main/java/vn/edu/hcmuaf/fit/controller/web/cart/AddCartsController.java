package vn.edu.hcmuaf.fit.controller.web.cart;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.CartItem;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.phone.Cap;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.until.AlertUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCarts", urlPatterns = {"/add-carts"})
public class AddCartsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String phoneId = request.getParameter("phoneId");
        String colorId = request.getParameter("colorId");
        String capId = request.getParameter("capId");
        String quantity = request.getParameter("num");
        int num = 1;
        Phone phone = new AbstractDAO<Phone>("phones").get(" and id = " + phoneId, Phone.class, null).get();
        Color color = phone._colors().get(0)._color();
        if (quantity != null) {
            num = Integer.parseInt(request.getParameter("num"));
        }
        if (capId != null) {
            phone = new AbstractDAO<Cap>("caps").get(" and id = " + capId, Cap.class, null).get()._phone();
        }
        if (colorId != null) {
            color = new AbstractDAO<Color>("colors").get(" and id = " + colorId, Color.class, null).get();
        }
        if (phone != null) {
            if (action.equals("carts")) {
                CartItem cartItem = new CartItem(phone, color, num, phone.getPrice(), false);
                Carts carts = (Carts) SessionUntil.get(request, "CARTS");
                carts.add(cartItem);
                SessionUntil.set(request, "CARTS", carts);
                AlertUntil.setMessage(request, "success", "da them thanh cong vao trong gio hang");
                request.getRequestDispatcher("/carts").forward(request, response);
            }
            if (action.equals("wishes")) {
                CartItem cartItem = new CartItem(phone, color, phone.getPrice(), true);
                Carts carts = new Carts();
                if (SessionUntil.get(request, "CARTS") != null)
                    carts = (Carts) SessionUntil.get(request, "CARTS");
                else SessionUntil.set(request, "CARTS", carts);
                carts.add(cartItem);
                SessionUntil.set(request, "CARTS", carts);
                AlertUntil.setMessage(request, "success", "da them thanh cong vao trong yeu thich");
                request.getRequestDispatcher("/carts").forward(request, response);
            }
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
