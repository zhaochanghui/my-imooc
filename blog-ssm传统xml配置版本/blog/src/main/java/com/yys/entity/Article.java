package com.yys.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/*
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11),
  `brief` varchar(512) DEFAULT NULL,
  `content` longtext,
  `create_time` datetime,
  update_time datetime,
  PRIMARY KEY (`id`)
) ENGINE=Innodb default charset=utf8;

 */
public class Article {
    private Integer id;
    private String title;
    private Integer categoryId;
    private Integer subCategory;
    private String brief;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date createTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date updateTime;

    private Category category;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public Integer getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(Integer subCategory) {
        this.subCategory = subCategory;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", categoryId=" + categoryId +
                ", subCategory=" + subCategory +
                ", brief='" + brief + '\'' +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", category=" + category +
                '}';
    }
}
