package com.zch.oa.biz.impl;

import com.zch.oa.biz.DepartmentBiz;
import com.zch.oa.biz.EmployeeBiz;
import com.zch.oa.dao.DepartmentDao;
import com.zch.oa.dao.EmployeeDao;
import com.zch.oa.entity.Employee;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value="employeeBiz")
public class EmployeeBizImpl implements EmployeeBiz {

    //  @Resource
    @Resource
    EmployeeDao employeeDao;

    public EmployeeBizImpl() {
        super();
    }

    public void add(Employee employee) {
        employee.setPwd("123456");
        employeeDao.insert(employee);
    }

    public void edit(Employee employee) {
        employeeDao.update(employee);
    }

    public void remove(String sn) {
        employeeDao.delete(sn);
    }

    public Employee get(String sn) {
        return employeeDao.select(sn);
    }

    public List<Employee> getAll() {
        return employeeDao.selectAll();
    }
}
