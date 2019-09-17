package com.yys.controller;

import com.yys.entity.Article;
import com.yys.entity.Category;
import com.yys.service.ArticleService;
import com.yys.service.CategoryService;
import org.apache.ibatis.annotations.Param;
import org.junit.runners.Parameterized;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller("categoryController")
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping(value = "/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("category", new Category());
        map.put("categories", categoryService.getAll());
        return "/category/add";
    }


    @RequestMapping("/add")
    public String add(Category category) {
        categoryService.insert(category);
        return "redirect:list";
    }

    @RequestMapping(value = "/delete",params = "id")
    public String delte(Integer id) {
        categoryService.delete(id);
        return "redirect:list";
    }


    @GetMapping(value = "/to_update",params = "id")
    public String toUpdate(Integer id, Map<String, Object> map) {
        Category category = categoryService.select(id);
        map.put("category", category);
        map.put("categories", categoryService.getAll());
        return "/category/update";
    }


    @RequestMapping("/update")
    public String update(Category category) {
        categoryService.update(category);
        return "redirect:list";
    }


    @RequestMapping("/list")
    public String list(Map<String,Object> map) {
        System.out.println(categoryService.getAll());
        map.put("list",categoryService.getAll());
        return "/category/list";
    }

}
