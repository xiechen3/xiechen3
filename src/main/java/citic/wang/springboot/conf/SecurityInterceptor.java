package citic.wang.springboot.conf;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import citic.wang.springboot.model.User;

@Component
public class SecurityInterceptor implements HandlerInterceptor  {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    	  HttpSession session = request.getSession();
    	User info = (User) session.getAttribute("user");;
        if (info == null || StringUtils.isEmpty(info)) {
        	System.out.println("1113123");
             session.setAttribute("msg", "&#12288&#12288&#12288请登录！");
        	 response.sendRedirect(request.getContextPath() + "/index");
            return false;
        }
        return true;
    }

}

