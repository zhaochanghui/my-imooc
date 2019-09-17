package com.zch.service.impl;

import com.zch.dao.CategoryDao;
import com.zch.entity.Category;
import com.zch.service.CategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service(value="categoryService")
public class CategoryServiceImpl  implements CategoryService {

    @Resource
    CategoryDao categoryDao;

    public List<Category> findAll(){
        return categoryDao.findAll();
    }
}
