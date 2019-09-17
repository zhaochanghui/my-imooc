package com.yys.sb1.controller;

import com.yys.sb1.service.DepartmentBiz;
import com.yys.sb1.entity.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


@Controller(value="departmentController")
@RequestMapping("/department")
public class DepartmentController {

    @Autowired
    private DepartmentBiz departmentBiz;

    @RequestMapping("/list")
    public String list(Map<String,Object> map){

        map.put("list",departmentBiz.getAll());

        return "/department/list";
    }


    //参数可以不要
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("department",new Department());
        return "/department/add";
    }

    @RequestMapping("/add")
    public String add(Department department)
    {
        departmentBiz.add(department);
        System.out.println(department.getName());
        return "redirect:list";
    }

    @RequestMapping(value = "to_update",params = "sn")
    public String toUpdate(String sn,Map<String,Object> map){
        map.put("department",departmentBiz.get(sn));
        return "/department/update";
    }

    @RequestMapping("update")
    public String update(Department department){
        departmentBiz.edit(department);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove",params = "sn")
    public String remove(String sn){
        departmentBiz.remove(sn);
        return "redirect:list";
    }

    @ResponseBody
    @RequestMapping("/test")
    public String test(HttpServletRequest request)
    {
       String name = request.getParameter("name");
        return name;
    }
}
