///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package vn.edu.hcmuaf.fit.controller.auth;
//
//import com.google.gson.Gson;
//import dal.auth.PermissionDBContext;
//import dal.auth.UserDBContext;
//import model.auth.Permission;
//import model.auth.User;
//import utils.HashPass;
//import utils.Validate;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.sql.Date;
//import java.sql.Timestamp;
//
//public class SignupController extends HttpServlet {
//
//    private final Validate validate = new Validate();
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        HttpSession session = request.getSession(false);
//        boolean loggedIn = session != null && session.getAttribute("user") != null;
//        if (loggedIn) {
//            response.sendRedirect("/");
//        } else {
//            request.getRequestDispatcher("/views/auth/signup.jsp").forward(request, response);
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        try {
//            String username = validate.getFieldAjax(request, "username", true);
//            String email = validate.getFieldAjax(request, "email", true);
//            String password = validate.getFieldAjax(request, "password", true);
//            String confirm_password = validate.getFieldAjax(request, "confirm_password", true);
//            String first_name = validate.getFieldAjax(request, "first_name", true);
//            String last_name = validate.getFieldAjax(request, "last_name", true);
//            String phone = validate.getFieldAjax(request, "phone", true);
//            String gender = validate.getFieldAjax(request, "gender", true);
//            String birthday = validate.getFieldAjax(request, "birthday", true);
//
//            // process field
//            if (!password.equals(confirm_password)) {
//                String json = new Gson().toJson(new Error("Confirm password not match! Please try again!"));
//                response.setContentType("application/json");
//                response.setCharacterEncoding("UTF-8");
//                response.getWriter().write(json);
//                return;
//            } else {
//                HashPass hashPass = new HashPass();
//                UserDBContext db = new UserDBContext();
//                try {
//                    String field_username = validate.fieldString(username, "^[a-zA-Z0-9._-]{3,}$", "Username not work! Please enter new username");
//                    if (db.findOne("username", field_username) != null) {
//                        String json = new Gson().toJson(new Error("Username has exist! Please try new username!"));
//                        response.setContentType("application/json");
//                        response.setCharacterEncoding("UTF-8");
//                        response.getWriter().write(json);
//                        return;
//                    }
//
//                    String field_email = validate.fieldString(email, "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])", "Email wrong! please enter new email");
//                    if (db.findOne("email", field_email) != null) {
//                        String json = new Gson().toJson(new Error("Email has exist! Please try new email!"));
//                        response.setContentType("application/json");
//                        response.setCharacterEncoding("UTF-8");
//                        response.getWriter().write(json);
//                        return;
//                    }
//
//                    String field_phone = validate.fieldString(phone, "(\\+84|0)([3|5|7|8|9])+([0-9]{8})", "Phone is wrong please enter new phone!");
//                    Boolean field_gender = gender.equals("male") ? true : false;
//                    Date field_birthday = validate.fieldDate(birthday, "Birthday is wrong! Please try again");
//                    System.out.println(field_birthday);
//                    String field_password = hashPass.hashPassword(password);
//                    User user = new User();
//                    user.setUsername(field_username);
//                    user.setEmail(field_email);
//                    user.setPassword(field_password);
//                    user.setPhone(field_phone);
//                    user.setFirst_name(first_name);
//                    user.setLast_name(last_name);
//                    user.setGender(field_gender);
//                    user.setBirthday(field_birthday);
//                    Timestamp created_at = new Timestamp(System.currentTimeMillis());
//                    Timestamp updated_at = new Timestamp(System.currentTimeMillis());
//                    Boolean is_super = false;
//                    Boolean is_active = true;
//                    user.setCreated_at(created_at);
//                    user.setUpdated_at(updated_at);
//                    user.setIs_active(is_active);
//                    user.setIs_super(is_super);
//
//                    PermissionDBContext permissionDB = new PermissionDBContext();
//                    Permission per = permissionDB.findOne("user");
//                    user.setPermission(per.getName());
//                    user.setUser_permission(per);
//                    user = db.insert(user);
//
//                    String json = new Gson().toJson("Singup success");
//                    response.setContentType("application/json");
//                    response.setCharacterEncoding("UTF-8");
//                    response.getWriter().write(json);
//                } catch (Exception e) {
//                    String json = new Gson().toJson(new Error(e.getMessage()));
//                    response.setContentType("application/json");
//                    response.setCharacterEncoding("UTF-8");
//                    response.getWriter().write(json);
//                }
//            }
//        } catch (Exception e) {
//            String json = new Gson().toJson(e.getMessage());
//            response.setContentType("application/json");
//            response.setCharacterEncoding("UTF-8");
//            response.getWriter().write(json);
//        }
//
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
