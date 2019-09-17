package com.yys.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yys.entity.Article;
import com.yys.service.ArticleService;
import com.yys.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("homeController")
@RequestMapping("/home")
public class HomeController {

    @Autowired
    CategoryService categoryService;
    @Autowired
    ArticleService articleService;

    @RequestMapping(value="article_index")
    public String article_index(@RequestParam(required=true,defaultValue="1") Integer pageNum,
                               @RequestParam(required=false,defaultValue="10") Integer pageSize, Map<String, Object> model){

        PageHelper.startPage(pageNum, pageSize);

        List<Article> list = articleService.getAll();
        model.put("lists", list);
        model.put("categories",categoryService.getAll());

        PageInfo<Article> p=new PageInfo<Article>(list);
        model.put("page", p);
        System.out.println(p);
        return "home/article_index";
    }


    @RequestMapping("/article_index1")
    public String article_index1(Map<String,Object> map)
    {
        // startPage(第几页, 多少条数据)
        PageHelper.startPage(0, 10);
        // Mybatis查询方
        List<Article> list = articleService.getAll();
        // 用PageInfo对结果进行包装
        PageInfo pageInfo = new PageInfo(list);

        map.put("lists",articleService.getAll());
        map.put("categories",categoryService.getAll());
        return "home/article_index";
    }


    @RequestMapping("/article_detail/{id}")
    public String article_index(@PathVariable int id, Map<String,Object> map)
    {
        map.put("obj",articleService.select(id));
        map.put("categories",categoryService.getAll());
        return "home/article_detail";
    }


    @RequestMapping(value = "/article_search",params = "search")
    public String search(@RequestParam(required = true,defaultValue = "1") Integer pageNum,
                         @RequestParam(required = true,defaultValue = "10") Integer pageSize,
                         @RequestParam(required = true,defaultValue = "") String search, Map<String,Object> map){
        PageHelper.startPage(pageNum,pageSize);
        System.out.println(search);
        List<Article> list = articleService.findBySearchAndCate(search,null,null);
        map.put("lists",list);

        PageInfo<Article> p = new PageInfo<Article>(list);
        map.put("page",p);
//        map.put("lists",articleService.findBySearchAndCate(search,null));
        map.put("categories",categoryService.getAll());
        map.put("search",search);
        return "home/article_search";
    }

    @RequestMapping(value = "/article_cate",params = "cate")
    public String cate(@RequestParam(required = true,defaultValue = "1") Integer pageNum,
                         @RequestParam(required = true,defaultValue = "10") Integer pageSize,
                         @RequestParam(required = true,defaultValue = "") Integer cate, Map<String,Object> map){
        PageHelper.startPage(pageNum,pageSize);
        List<Article> list = articleService.findBySearchAndCate(null,cate,null);
        map.put("lists",list);

        PageInfo<Article> p = new PageInfo<Article>(list);
        map.put("page",p);

        map.put("cate",cate);
        map.put("categories",categoryService.getAll());
        return "home/article_cate";
    }

}
