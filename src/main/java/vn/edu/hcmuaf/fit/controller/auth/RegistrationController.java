package vn.edu.hcmuaf.fit.controller.auth;

import vn.edu.hcmuaf.fit.registration.RegistrationRequest;
import vn.edu.hcmuaf.fit.registration.RegistrationService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegistrationController", value = "/RegistrationController")
public class RegistrationController extends HttpServlet {
    private RegistrationService registrationService;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");

        registrationService.register(new RegistrationRequest(name, phone, email, password));


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String token = request.getParameter("token");

        registrationService.confirmToken(token);


    }
}
