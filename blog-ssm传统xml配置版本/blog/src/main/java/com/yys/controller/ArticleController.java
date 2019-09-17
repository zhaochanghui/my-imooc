package com.yys.controller;

import com.yys.entity.Article;
import com.yys.service.ArticleService;
import com.yys.service.CategoryService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping(value = "/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("article", new Article());
        map.put("categories", categoryService.getAll());
        return "/article/add";
    }


    @RequestMapping("/add")
    public String add(Article article, HttpServletRequest request) {
        System.out.println(article);
       System.out.println(request.getParameter("content"));
       articleService.insert(article);
        return "redirect:list";
    }

    @RequestMapping(value = "/delete/{id}",params = "id")
    public String delete(@PathVariable int id) {
        articleService.delete(id);
        return "redirect:list";
    }


    @GetMapping(value = "/to_update/{id}")
    public String toUpdate(@PathVariable int id , Map<String, Object> map) {
        Article article = articleService.select(id);

        map.put("article", article);
        map.put("categories", categoryService.getAll());
        return "/article/update";
    }


    @RequestMapping("/update")
    public String update(Article article) {
        System.out.println(article);
        articleService.update(article);
        return "redirect:list";
    }

    @RequestMapping("/list")
    public String list(Map<String,Object> map) {
        map.put("list",articleService.getAll());
        return "/article/list";
    }

}
