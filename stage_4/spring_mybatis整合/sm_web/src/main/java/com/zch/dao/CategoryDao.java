package com.zch.dao;
import com.zch.entity.Category;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository(value="categoryDao")
public interface CategoryDao {

    public List<Category> findAll();
}
