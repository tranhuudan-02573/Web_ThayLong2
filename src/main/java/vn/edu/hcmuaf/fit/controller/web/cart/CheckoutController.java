package vn.edu.hcmuaf.fit.controller.web.cart;

import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.AlertUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "checkout", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) SessionUntil.get(request, "USER");
        if (user.getCarts().isEmpty()) {
            AlertUntil.setMessage(request, "error", "chua co sp nao");
//            request.getRequestDispatcher("/views/web/cart.jsp").forward(request, response);
//        } else {
            request.getRequestDispatcher("/views/web/checkout.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        if (SessionUntil.get(request, "USER") != null) {

            User user = (User) SessionUntil.get(request, "USER");
            String payment = request.getParameter("payment");
            int code = Integer.parseInt(request.getParameter("code").trim());
            Order o = new Order();
            o.setUserId(user.getId());
            o.setPayment(payment);
            o.setCodeId(code);
            o.setTotal(user.total());


        } else {

        }


    }
}
