package com.zch.action;
import com.zch.entity.Department;
import com.zch.service.CategoryService;
import com.zch.service.DepartmentService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller("departmentController")
public class DepartmentController {

    @Resource
    CategoryService categoryService;

    @Resource
    DepartmentService departmentService;

    public void toadd(HttpServletRequest req,HttpServletResponse rep) throws ServletException,IOException{
        req.getRequestDispatcher("../department_add.jsp").forward(req,rep);
    }

    public void add(HttpServletRequest req,HttpServletResponse rep) throws IOException{
        String name = req.getParameter("name");
        String addres = req.getParameter("address");

        Department department = new Department();
        department.setName(name);
        department.setAddress(addres);
        departmentService.add(department);

        rep.sendRedirect(req.getContextPath()+"/department/list.do");
    }


    public void list(HttpServletRequest req,HttpServletResponse rep){
        try {
            req.setAttribute("name","tom");
            req.setAttribute("list",departmentService.findAll());
            req.getRequestDispatcher("../department_list.jsp").forward(req,rep);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void delete(HttpServletRequest req,HttpServletResponse rep) throws IOException
    {
        Integer id = Integer.valueOf(req.getParameter("id"));
        System.out.println(id);
        departmentService.delete(id);
        rep.sendRedirect(req.getContextPath()+"/department/list.do");
    }

    public void toedit(HttpServletRequest req,HttpServletResponse rep) throws ServletException,IOException{
        Department  department = departmentService.find(Integer.valueOf(req.getParameter("id")));
        req.setAttribute("obj",department);
        req.getRequestDispatcher("../department_edit.jsp").forward(req,rep);
    }

    public void edit(HttpServletRequest req,HttpServletResponse rep) throws IOException{
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String addres = req.getParameter("address");

        Department department = departmentService.find(id);
        department.setName(name);
        department.setAddress(addres);
        departmentService.update(department);

        rep.sendRedirect(req.getContextPath()+"/department/list.do");
    }


//    public void test(HttpServletRequest req,HttpServletResponse rep){
//        System.out.println(categoryService.findAll());
//        try {
//            req.setAttribute("name","tom");
//            req.setAttribute("category",categoryService.findAll());
//            req.getRequestDispatcher("../test.jsp").forward(req,rep);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
}
