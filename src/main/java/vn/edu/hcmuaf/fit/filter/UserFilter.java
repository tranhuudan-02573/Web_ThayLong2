package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(urlPatterns = {"/*"})
public class UserFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        User user = (User) SessionUntil.get((HttpServletRequest) request, Variable.Global.USER.toString());
        if (user != null) {
            System.out.println("dan");
            SessionUntil.set((HttpServletRequest) request, Variable.Global.USER.toString(), new UserDAO().get(" and id=" + user.getId(), User.class, null).get());
        }
        chain.doFilter(request, response);
    }
}
