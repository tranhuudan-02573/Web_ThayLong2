package vn.edu.hcmuaf.fit.controller.web.cart;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.*;
import vn.edu.hcmuaf.fit.mail.MailReceipt;
import vn.edu.hcmuaf.fit.model.cart.CartItem;
import vn.edu.hcmuaf.fit.model.cart.Carts;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.phone.Phone;
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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "checkout", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Carts carts = (Carts) SessionUntil.get(request, Variable.Global.CART.toString());
        if (carts.cartItems()==0) {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "chua co sp nao");
            response.sendRedirect("/carts");
        }

        else {
            List<CartItem> cartItems = new ArrayList<>(carts.getCartItemIntegerMap().keySet());
            // is customer
            User user = (User) SessionUntil.get(request, "USER");
            String cusEmail = request.getParameter("cus-email");
            Customer cus;

            if(cusEmail!=null && !new UserDAO().hasEmail(cusEmail)){
                String cusGender = request.getParameter("gender");
                String cusName = request.getParameter("cus-name");
                String cusPhone = request.getParameter("cus-phone");
                String cusAddress = request.getParameter("cus-address");

                cus = new Customer();
                cus.setEmail(cusEmail);cus.setName(cusName);
                cus.setAddress(cusAddress);cus.setPhone(cusPhone);cus.setGender(cusGender);

                new CustomerDAO().save(cus);
            }
//            MailReceipt.send(cusEmail,carts.cartItems(),carts.total(),cartItems);

            if(user!=null){
                Order order = new Order();
                order.setUserId(user.getId());
                order.setCustomerId(new CustomerDAO().getID(cusEmail));

                new OrderDAO().save(order);
            }

            CartItemsDao itemsDao = new CartItemsDao();
            carts.setUserId(new UserDAO().getID(cusEmail));
            CartDao cartDao = new CartDao();
            for (CartItem item:cartItems) {
                // save cart Items
                itemsDao.save(item);
                // save cart
                carts.setCart_itemId(itemsDao.getID());
                try {
                    cartDao.save(carts);
                }
                catch (Exception e){
                }
            }





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

    public static void main(String[] args) {
        System.out.println(!new UserDAO().hasEmail("howoha6825@cmeinbox.com"));
    }
}
