package com.yys.service;

import com.yys.entity.Category;

import java.util.List;

public interface CategoryService {

    void insert(Category category);
    void delete(Integer id);
    void update(Category category);
    Category select(int id);
    List<Category> getAll();
}
