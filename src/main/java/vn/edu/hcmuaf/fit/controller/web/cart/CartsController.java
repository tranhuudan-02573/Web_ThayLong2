package vn.edu.hcmuaf.fit.controller.web.cart;

import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "Carts", urlPatterns = {"/carts"})
public class CartsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (SessionUntil.get(request, "USER") == null) {
            Carts carts = (Carts) SessionUntil.get(request, "CARTS");
            request.setAttribute("carts", carts);
        } else {
            User user =(User) SessionUntil.get(request, "USER");

            Carts carts = user.getCarts()

        }


        request.getRequestDispatcher("/views/web/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
