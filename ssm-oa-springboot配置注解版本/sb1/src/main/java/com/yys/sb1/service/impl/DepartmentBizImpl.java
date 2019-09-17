package com.yys.sb1.service.impl;

import com.yys.sb1.service.DepartmentBiz;
import com.yys.sb1.dao.DepartmentDao;
import com.yys.sb1.entity.Department;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value="departmentBiz")
public class DepartmentBizImpl implements DepartmentBiz {

    //  @Resource
    @Resource
    DepartmentDao departmentDao;

    public DepartmentBizImpl() {
        super();
    }

    public void add(Department department) {
        departmentDao.insert(department);
    }

    public void edit(Department department) {
        departmentDao.update(department);
    }

    public void remove(String sn) {
        departmentDao.delete(sn);
    }

    public Department get(String sn) {
        return departmentDao.select(sn);
    }

    public List<Department> getAll() {
        return departmentDao.selectAll();
    }
}
