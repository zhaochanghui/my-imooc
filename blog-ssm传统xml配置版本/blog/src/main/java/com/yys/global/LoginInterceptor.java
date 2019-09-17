package com.yys.global;

import com.yys.service.ArticleService;
import com.yys.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    CategoryService categoryService;
    @Autowired
    ArticleService articleService;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        System.out.println("拦截preHandle...");
        String url = httpServletRequest.getRequestURI();
        if(url.toLowerCase().indexOf("login")>0 || url.toLowerCase().indexOf("home")>0 ||url.toLowerCase().indexOf("assets")>0){
            return true;
        }


        HttpSession session = httpServletRequest.getSession();
        if(session.getAttribute("auth")!=null){
            return true;
        }

        httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/to_login");
        return false;


    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("navsort",categoryService.getAll());
        session.setAttribute("hots",articleService.findBySearchAndCate(null,null,5));

        System.out.println("postHandle...");
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("afterCompletion...");
    }
}
