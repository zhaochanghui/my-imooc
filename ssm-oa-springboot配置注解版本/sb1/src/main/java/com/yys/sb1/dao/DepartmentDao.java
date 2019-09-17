package com.yys.sb1.dao;

import com.yys.sb1.entity.Department;
import com.yys.sb1.entity.Department;
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
