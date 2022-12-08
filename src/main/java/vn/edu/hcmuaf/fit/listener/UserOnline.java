package vn.edu.hcmuaf.fit.listener;

import vn.edu.hcmuaf.fit.model.user.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
@WebListener
public class UserOnline implements HttpSessionListener, ServletContextListener {

    ServletContext application;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        User user =(User) application.getAttribute("User");




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
