package com.xjp.model;

import javax.persistence.*;

@Table(name = "article_type")
public class ArticleType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 文章类型名称
     */
    private String name;

    private Integer status;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取文章类型名称
     *
     * @return name - 文章类型名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置文章类型名称
     *
     * @param name 文章类型名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return status
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * @param status
     */
    public void setStatus(Integer status) {
        this.status = status;
    }
}