package com.yys.service;

import com.yys.entity.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleService {
    void insert(Article article);
    void delete(int id);
    void update(Article article);
    Article select(int id);
    List<Article> getAll();
    List<Article> findBySearchAndCate(@Param("title") String title, @Param("cate") Integer cate,@Param("limit") Integer limit);
}
