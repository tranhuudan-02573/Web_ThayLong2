package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.until.CookieUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = CookieUntil.get("username",request);
        if(username==null){
            request.getRequestDispatcher("/login").forward(request,response);
            return;
        }
        SessionUntil.add(request,"username",username);
        request.getRequestDispatcher("/home").forward(request,response);






    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
