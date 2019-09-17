package com.zch;


import com.zch.entity.Category;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import com.zch.service.*;
import java.util.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:beans.xml")
public class Main {

    @Resource(name="categoryService")
    private CategoryService categoryService;

    @Test
    public void testAdd() {
        List<Category> list = categoryService.findAll();
        for(Category c: list) {
            System.out.println(c.getName());
        }
    }
}
