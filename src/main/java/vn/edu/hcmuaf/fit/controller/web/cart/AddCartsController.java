package vn.edu.hcmuaf.fit.controller.web.cart;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.CartItem;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        String name = request.getParameter("name");
        String cap = phoneId;
        int num = 1;
        if (capId != null) cap = capId;
        Phone phone = new AbstractDAO<Phone>("phones").get(" and id = " + cap, Phone.class, null).get();
        Color color = phone._colors().get(0)._color();
        if (colorId != null)
            color = new AbstractDAO<Color>("colors").get(" and id =" + colorId, Color.class, null).get();
        if (quantity != null) num = Integer.parseInt(quantity);
        Carts carts = (Carts) SessionUntil.get(request, Variable.Global.CART.toString());
        if (phone.getId() != 0 && action != null && carts != null) {
            if ("wishes".equals(action)) {
                CartItem cartItem = new CartItem(phone.getId()
                        , color.getId(), num, phone.getPrice(), true);
                carts.add(cartItem);
                SessionUntil.set(request, Variable.Global.CART.toString(), carts);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da them thanh cong vao trong yeu thich");
            }
            if ("delete".equals(action)) {
                CartItem cartItem = new CartItem(phone.getId()
                        , color.getId(), num, phone.getPrice(), false);
                carts.remove(cartItem);
                SessionUntil.set(request, Variable.Global.CART.toString(), carts);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da xoa thanh cong");
            }
            if ("delete2".equals(action)) {
                CartItem cartItem = new CartItem(phone.getId()
                        , color.getId(), num, phone.getPrice(), true);
                carts.remove(cartItem);
                SessionUntil.set(request, Variable.Global.CART.toString(), carts);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da xoa thanh cong");
            }
            if ("updateColor".equals(action)) {
                String colorIdU = request.getParameter("colorIdU");
                CartItem cartItem = new CartItem(phone.getId()
                        , color.getId(), num, phone.getPrice(), false);
                if (colorIdU != null) {
                    carts.updateColor(cartItem, Integer.parseInt(colorIdU));
                    SessionUntil.set(request, Variable.Global.CART.toString(), carts);
                    SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                    SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da cap nhat thanh cong");
                }


            }
            if ("updateQuantity".equals(action)) {
                String quantityN = request.getParameter("numN");
                CartItem cartItem = new CartItem(phone.getId()
                        , color.getId(), num, phone.getPrice(), false);
                if (quantityN != null) {
                    carts.updateQuantity(cartItem, Integer.parseInt(quantityN));
                    SessionUntil.set(request, Variable.Global.CART.toString(), carts);
                    SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                    SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da cap nhat thanh cong");
                }


            }
            if ("carts".equals(action)) {
                CartItem cartItem = new CartItem(phone.getId(), color.getId(), num, phone.getPrice(), false);
                carts.add(cartItem);
                SessionUntil.set(request, Variable.Global.CART.toString(), carts);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da them vao trong gio hang");
            }
        }
        if (name != null) {
            if ("home".equals(name))
                response.sendRedirect("/home?page=1&different=moi");
            if ("detail".equals(name))
                response.sendRedirect("/phone-detail?id=" + phoneId + "&page=1&page2=1");
            if ("filter".equals(name))
                response.sendRedirect("/phone-filter?sort=sap+xep+theo+A+-+Z&page=1");
            if ("carts".equals(name)) response.sendRedirect("/carts");
            if ("user".equals(name)) response.sendRedirect("/user-profile");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
