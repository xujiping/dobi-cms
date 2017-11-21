package com.xjp.model;

import javax.persistence.*;

@Table(name = "menu")
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 菜单级别
     */
    private Integer level;

    /**
     * 父菜单ID
     */
    private Integer parent;

    /**
     * 路径
     */
    private String url;

    /**
     * 状态：1可用 0不可用
     */
    private Integer status;

    /**
     * 用途：1前台 2后台管理菜单
     */
    private Integer type;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

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
     * 获取菜单名称
     *
     * @return name - 菜单名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置菜单名称
     *
     * @param name 菜单名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取菜单级别
     *
     * @return level - 菜单级别
     */
    public Integer getLevel() {
        return level;
    }

    /**
     * 设置菜单级别
     *
     * @param level 菜单级别
     */
    public void setLevel(Integer level) {
        this.level = level;
    }

    /**
     * 获取父菜单ID
     *
     * @return parent - 父菜单ID
     */
    public Integer getParent() {
        return parent;
    }

    /**
     * 设置父菜单ID
     *
     * @param parent 父菜单ID
     */
    public void setParent(Integer parent) {
        this.parent = parent;
    }

    /**
     * 获取状态：1可用 0不可用
     *
     * @return status - 状态：1可用 0不可用
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置状态：1可用 0不可用
     *
     * @param status 状态：1可用 0不可用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获取用途：1前台 2后台管理菜单
     *
     * @return type - 用途：1前台 2后台管理菜单
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置用途：1前台 2后台管理菜单
     *
     * @param type 用途：1前台 2后台管理菜单
     */
    public void setType(Integer type) {
        this.type = type;
    }
}