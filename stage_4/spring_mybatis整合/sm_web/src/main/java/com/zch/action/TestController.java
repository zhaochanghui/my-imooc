package com.zch.action;
import com.zch.service.CategoryService;
import com.zch.service.DepartmentService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller("testController")
public class TestController {

    @Resource
    CategoryService categoryService;

    @Resource
    DepartmentService departmentService;

    public void test(HttpServletRequest req,HttpServletResponse rep){
        System.out.println(departmentService.findAll());
        try {
            req.setAttribute("name","tom");
            req.setAttribute("list",departmentService.findAll());
            req.getRequestDispatcher("../test.jsp").forward(req,rep);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
