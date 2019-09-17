package com.yys.dao;

import com.yys.entity.Article;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("articleDao")
public interface ArticleDao {
    void insert(Article article);
    void delete(int id);
    void update(Article article);
    Article select(int id);
    List<Article> getAll();
    List<Article> findBySearchAndCate(@Param("title") String title,@Param("cate") Integer cate,@Param("limit") Integer limit);
}
