package vn.edu.hcmuaf.fit.controller.web.phone.detail;

import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.phone.PhoneSpec;
import vn.edu.hcmuaf.fit.model.phone.SpecType;
import vn.edu.hcmuaf.fit.service.impl.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(urlPatterns = {"/phone-detail"})
public class PhoneDetailController extends HttpServlet {

    PhoneDAO phoneDAO = new PhoneDAO("phones");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id").trim());

        Phone phone = phoneDAO.getPhoneJoinById(id);

        List<Phone> phoneBrand = phoneDAO.joinPhoneCard(" and p.brandId =" + phone.getBrandId(), Phone.class, null, null);

        Map<String, List<Phone>> map = new HashMap<>();

        List<Phone> phoneModel = phoneDAO.joinPhoneCard(" and p.modelId =" + phone.getModelId(), Phone.class, null, null);

        if (!phoneBrand.isEmpty()) map.put("Điện Thoại Cùng Hãng", phoneBrand);
        if (!phoneModel.isEmpty()) map.put("Điện Thoại Cùng Dòng", phoneModel);

        request.setAttribute("map", map);
        request.setAttribute("phone", phone);

        request.getRequestDispatcher("/views/web/product.jsp").forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
