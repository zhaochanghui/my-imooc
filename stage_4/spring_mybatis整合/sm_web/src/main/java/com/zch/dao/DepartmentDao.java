package com.zch.dao;

import java.util.*;
import com.zch.entity.Department;
import org.springframework.stereotype.Repository;


@Repository(value="departmentDao")
public interface DepartmentDao {
    public void add(Department department);
    public void delete(Integer id);
    public void update(Department department);
    public Department find(Integer id);
    public List<Department> findAll();
}
