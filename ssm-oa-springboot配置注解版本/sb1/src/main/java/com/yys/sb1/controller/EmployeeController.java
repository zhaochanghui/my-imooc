package com.yys.sb1.controller;

import com.yys.sb1.service.DepartmentBiz;
import com.yys.sb1.service.EmployeeBiz;
import com.yys.sb1.entity.Employee;
import com.yys.sb1.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


@Controller(value="employeeController")
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private DepartmentBiz departmentBiz;

    @Autowired
    private EmployeeBiz employeeBiz;

    @RequestMapping("/list")
    public String list(Map<String,Object> map){

        map.put("list",employeeBiz.getAll());

        return "/employee/list";
    }


    //参数可以不要
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("employee",new Employee());
        map.put("dlist",departmentBiz.getAll());
        map.put("plist", Contant.getPosts());
        return "/employee/add";
    }

    @RequestMapping("/add")
    public String add(Employee employee)
    {
        employeeBiz.add(employee);
        System.out.println(employee.getName());
        return "redirect:list";
    }

    @RequestMapping(value = "to_update",params = "sn")
    public String toUpdate(String sn,Map<String,Object> map){
        map.put("employee",employeeBiz.get(sn));
        map.put("dlist",departmentBiz.getAll());
        map.put("plist",Contant.getPosts());
        return "/employee/update";
    }

    @RequestMapping("update")
    public String update(Employee employee){
        employeeBiz.edit(employee);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove",params = "sn")
    public String remove(String sn){
        employeeBiz.remove(sn);
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
