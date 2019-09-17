package com.zch.service;

import com.zch.entity.Category;
import com.zch.entity.Department;

import java.util.List;

public interface DepartmentService {
    public void add(Department department);
    public void delete(Integer id);
    public void update(Department department);
    public Department find(Integer id);
    public List<Department> findAll();
}
