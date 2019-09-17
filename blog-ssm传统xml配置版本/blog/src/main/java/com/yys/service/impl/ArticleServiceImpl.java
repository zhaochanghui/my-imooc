package com.yys.service.impl;

import com.yys.dao.ArticleDao;
import com.yys.entity.Article;
import com.yys.entity.Category;
import com.yys.service.ArticleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("articleService" )
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleDao articleDao;

    @Override
    public void insert(Article article) {
        article.setCreateTime(new Date());
        article.setUpdateTime(new Date());
        article.setCategory(new Category());
        article.setSubCategory(null);
        articleDao.insert(article);
    }

    @Override
    public void delete(int id){
        articleDao.delete(id);
    }

    @Override
    public  void update(Article article){
        article.setUpdateTime(new Date());
        articleDao.update(article);
    }

    @Override
    public Article select(int id){
        return articleDao.select(id);
    }
    @Override
    public List<Article> getAll() {
        return articleDao.getAll();
    }

    @Override
    public  List<Article> findBySearchAndCate(@Param("title") String title, @Param("cate") Integer cate,@Param("limit") Integer limit){
        return articleDao.findBySearchAndCate(title,cate,limit);
    }
}
