package vn.edu.hcmuaf.fit.listener;

import vn.edu.hcmuaf.fit.dao.impl.cart.CartDAO;
import vn.edu.hcmuaf.fit.model.cart.Cart;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.List;

@WebListener
public class CartFilter implements HttpSessionListener, ServletContextListener {


//    @Inject
    CartDAO cartDAO = new CartDAO("cart");

    ServletContext application;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        User user =(User) application.getAttribute("User");

        if(user!=null){
            List<Cart> cart =(List<Cart>) application.getAttribute("Cart");
            List<Cart> cartUser =cartDAO.getAllByUser(user.getId());
        }else{

        }




        application.setAttribute("Cart",user);


    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {

    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
