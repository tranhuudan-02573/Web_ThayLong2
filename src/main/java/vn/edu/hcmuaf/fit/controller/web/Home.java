package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.phone.Sale;

import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/home"})
public class Home extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SessionUntil.set(request, Variable.Global.USER.toString(),new AbstractDAO<User>("users").get(" and id = 1",User.class,null).get());

        Map<String, String> differentList = new HashMap<>();
        differentList.put(" and phones.saleId is not null ", "giam gia");
        differentList.put(" and phone_promot.promotId =1 ", "tra gop");
        differentList.put(" and phones.isNew is true ", "moi");
        String different = request.getParameter("different");
        String sql = "";
        List<String> keys3 = new ArrayList<>(differentList.keySet());
        if (different != null) {
            for (String key : keys3
            ) {
                if (differentList.get(key).equals(different)) {
                    sql += key;
                }

            }
        }
        String page = request.getParameter("page");
        int pagen = 1;

        if (page != null) {
            pagen = Integer.parseInt(page);
            request.setAttribute("page", page);
        }


        List<Sale> saleList = new AbstractDAO<Sale>("sales").list(" and now() between start_at and end_at and unit ='%' and value >40 ", Sale.class, null, null, null, null);
        List<Sale> saleListCarousel = new AbstractDAO<Sale>("sales").list(" and now() between start_at and end_at ", Sale.class, null, 6, null, null);
        List<Brand> brandList = new AbstractDAO<Brand>("brands").list("", Brand.class, null, 14, null, null);
        List<Phone> phones = new AbstractDAO<Phone>("phones").list0(sql, Phone.class, null, null, Variable.Global.JOIN_PHONE, null, 5 * pagen, 0);

        request.setAttribute("differentList", differentList);
        request.setAttribute("different", different);
        request.setAttribute("phones", phones);
        request.setAttribute("brandList", brandList);
        request.setAttribute("saleList", saleList);
        request.setAttribute("saleListCarousel", saleListCarousel);
        request.getRequestDispatcher("/views/web/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static void main(String[] args) {
        System.out.println(new AbstractDAO<Sale>("sales").list(" and now() between start_at and end_at ", Sale.class, null, 6, null, null));
    }

}
