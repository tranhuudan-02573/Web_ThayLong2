package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.PhoneDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Model;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebFilter(urlPatterns = {"/phone-detail"}, filterName = "HistoryFilter")
public class HistoryFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id != null) {
            Phone phone = new PhoneDAO().get(" and id=" + id, Phone.class, null).orElse(null);
            if (phone != null) {
                Set<Phone> phones = (Set<Phone>) SessionUntil.get((HttpServletRequest) request, Variable.Global.HISTORY_PHONE.toString());
                Set<Brand> phoneBrand = (Set<Brand>) SessionUntil.get((HttpServletRequest) request, Variable.Global.HISTORY_BRAND.toString());
                Set<Model> phoneModel = (Set<Model>) SessionUntil.get((HttpServletRequest) request, Variable.Global.HISTORY_MODEL.toString());

                if (phones != null) {
                    if (phones.size() < 6) {
                        phones.add(phone);
                        SessionUntil.set((HttpServletRequest) request, Variable.Global.HISTORY_PHONE.toString(), phones);
                    }
                    if (phoneBrand.size() < 6) {
                        phoneBrand.add(phone._brand());
                        SessionUntil.set((HttpServletRequest) request, Variable.Global.HISTORY_BRAND.toString(), phoneBrand);

                    }
                    if (phoneBrand.size() < 6 && phone.getModelId() != null) {
                        phoneModel.add(phone._model());
                        SessionUntil.set((HttpServletRequest) request, Variable.Global.HISTORY_MODEL.toString(), phoneModel);
                    }
                } else {
                    phones = new HashSet<>();
                    phoneBrand = new HashSet<>();
                    phoneModel = new HashSet<>();
                    phones.add(phone);
                    phoneBrand.add(phone._brand());
                    if (phone.getModelId() != null) {
                        phoneModel.add(phone._model());
                        SessionUntil.set((HttpServletRequest) request, Variable.Global.HISTORY_MODEL.toString(), phoneModel);
                    }
                    SessionUntil.set((HttpServletRequest) request, Variable.Global.HISTORY_BRAND.toString(), phoneBrand);
                    SessionUntil.set((HttpServletRequest) request, Variable.Global.HISTORY_PHONE.toString(), phones);
                }
            }
        }
        chain.doFilter(request, response);
    }
}
