package vn.edu.hcmuaf.fit.controller.web.cart;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.user.Customer;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.FormUtil;
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
        Carts carts = (Carts) SessionUntil.get(request, Variable.Global.CART.toString());
        if (carts.cartItems()==0) {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "chua co sp nao");
            response.sendRedirect("/carts");
        } else {
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
//            o.setTotal(user.total());


        } else {
            Customer customer = FormUtil.toModel(Customer.class, request);

            int id = new AbstractDAO<Customer>("customers").insertWithId(" insert into customers (name,email,phone,address,gender) values (:t.name,:t.email,:t.phone,:t.address,:t.gender)", customer);




        }


    }
}
