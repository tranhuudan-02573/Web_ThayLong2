package vn.edu.hcmuaf.fit.controller.user;

import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.CookieUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class Login extends HttpServlet {
    User account;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println((account!=null) + "ss");

        if (CookieUntil.get("username",request)!=null) {
//            SessionUntil.add(request, "username", CookieUntil.get("username", request));
            if ("manager".equals(account.getPermission())) {
            // code...

                response.sendRedirect("/admin/home");

            } else {
            // code...

                response.sendRedirect("/home");
            }
        }
        else{
            response.sendRedirect("/home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = (String) request.getParameter("fEmail");
        String userPass = (String) request.getParameter("fPass");
        String remember = (String) request.getParameter("remember");
        // save name user  when submit
        SessionUntil.add(request,"username", userName);

        System.out.println("User: "+userName+" "+userPass);
        System.out.println("remember: "+remember);

        account =  User.findAccount(userName, userPass);

        if (account == null) {
            SessionUntil.add(request,"messErr","Vui lòng kiểm tra lại thông tin đăng nhập");
            response.sendRedirect("/home");
            return;
        }
        if (!account.isActive()) {
            SessionUntil.add(request,"messErr","Vui lòng xác thực tài khoản trong email của bạn");
            response.sendRedirect("/home");
            return;
        }
        /* LOGIN SUCCESSFULLY*/
        // handle turn-off display popup login
        SessionUntil.delItem(request,"messErr");
        // convert label login <->logout
        SessionUntil.add(request,"personlogin", account.getPermission());


        if (remember != null) {
            CookieUntil.add("username",userName,3,response);
            CookieUntil.add("permission",account.getPermission(),3,response);
        }
        if (remember == null){
            CookieUntil.add("username",userName,0,response);
            CookieUntil.add("permission",account.getPermission(),0,response);
        }
        doGet(request,response);
    }

    public static void main(String[] args) {

//        System.out.println(User.findAccount("abc@gmail.com", "12")==null);
    }

}