package vn.edu.hcmuaf.fit.controller.user;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.CookieUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "login", value = "/login")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = CookieUntil.get("username", request);
        String password = CookieUntil.get("password", request);
        if (username != null && password != null) {
            request.setAttribute("username", username);
            request.setAttribute("password", password);
            request.getRequestDispatcher("/views/web/signin.jsp").forward(request, response);
        }
        request.getRequestDispatcher("/views/web/signin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String userName = request.getParameter("fEmail");
        String userPass = request.getParameter("fPass");
        String remember = request.getParameter("remember");

        User user = new UserDAO().get(" and email='" + userName + "'", User.class, null, null).orElse(null);
        if (user != null) {

            if (BCrypt.checkpw(userPass, user.getPassword())) {

                if (!user.isActive()) {
                    SessionUntil.set(request, "messErr", "Vui lòng xác thực tài khoản trong email của bạn");
                    String code = UUID.randomUUID().toString();
                    response.sendRedirect("/active?email=" + userName + "&key=" + code + "&name=" + user.getName());
                } else {
                    if (remember != null) {
                        CookieUntil.add("username", userName, 3, response);
                        CookieUntil.add("password", userPass, 3, response);
                    }
                    if (remember == null) {
                        CookieUntil.add("username", userName, 0, response);
                        CookieUntil.add("password", userPass, 0, response);
                    }
                    SessionUntil.set(request, Variable.Global.USER.toString(), user);
                    if (user.getPermission().equals(Variable.Global.ADMIN.toString()))
                        response.sendRedirect("/admin/home");
                    else response.sendRedirect("/home?page=1&different=moi");
                }
            } else {
<<<<<<< Updated upstream
                request.setAttribute("email", userName);
                request.setAttribute("messErr", "mat khau khong dung");
                request.getRequestDispatcher("/views/web/signin.jsp").forward(request, response);
=======
                if (remember != null) {
                    CookieUntil.add("username", userName, 3, response);
                    CookieUntil.add("password", userPass, 3, response);
                }
                if (remember == null) {
                    CookieUntil.add("username", userName, 0, response);
                    CookieUntil.add("password", userPass, 0, response);
                }
                SessionUntil.set(request, Variable.Global.USER.toString(), user);
                if (user.getPermission().equals(Variable.Global.ADMIN.toString())) response.sendRedirect("/admin/home");
                else response.sendRedirect("/home?page=1&different=moi");
            }

        } else {
            if (new UserDAO().get(" and email='" + userName + "'", User.class, null, null).orElse(null) == null) {
                request.setAttribute("messErr", "email không tồn tại");
            }
            if (new UserDAO().get(" and email='" + userName + "' and password='" + userPass + "'", User.class, null, null).orElse(null) == null) {
                request.setAttribute("email", userName);
                request.setAttribute("messErr", "mật khẩu không đúng");
<<<<<<< Updated upstream
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
            }
        } else {
            request.setAttribute("messErr", "email ko ton tai");
            request.getRequestDispatcher("/views/web/signup.jsp").forward(request, response);
        }


    }


}