package com.zch.oa.dao;

import com.zch.oa.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository(value = "departmentDao")
public interface DepartmentDao {

    void insert(Department department);
    void update(Department department);
    void delete(String sn);
    Department select(String sn);
    List<Department> selectAll();
}
