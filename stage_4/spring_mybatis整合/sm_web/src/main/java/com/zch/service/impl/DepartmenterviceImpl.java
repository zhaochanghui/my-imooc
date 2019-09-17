package com.zch.service.impl;

import com.zch.dao.CategoryDao;
import com.zch.dao.DepartmentDao;
import com.zch.entity.Category;
import com.zch.entity.Department;
import com.zch.service.CategoryService;
import com.zch.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value="departmentService")
public class DepartmenterviceImpl implements DepartmentService {

    @Resource
    DepartmentDao departmentDao;

    public void add(Department department){
        departmentDao.add(department);
    }

    public void delete(Integer id){
        departmentDao.delete(id);
    }
    public void update(Department department){
        departmentDao.update(department);
    }
    public Department find(Integer id){
        return departmentDao.find(id);
    }

    public List<Department> findAll(){
        return departmentDao.findAll();
    }
}
