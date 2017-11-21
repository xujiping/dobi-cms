package com.xjp.model;

import javax.persistence.*;

@Table(name = "upload")
public class Upload {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 名称
     */
    private String name;

    /**
     * 后缀
     */
    private String suffix;

    /**
     * 类型：1图片
     */
    private Integer type;

    /**
     * 所属菜单ID
     */
    @Column(name = "menu_id")
    private Integer menuId;

    /**
     * 状态：1可用，0不可用
     */
    private Integer status;

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
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
     * 获取名称
     *
     * @return name - 名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置名称
     *
     * @param name 名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取后缀
     *
     * @return suffix - 后缀
     */
    public String getSuffix() {
        return suffix;
    }

    /**
     * 设置后缀
     *
     * @param suffix 后缀
     */
    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    /**
     * 获取类型：1图片
     *
     * @return type - 类型：1图片
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置类型：1图片
     *
     * @param type 类型：1图片
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取状态：1可用，0不可用
     *
     * @return status - 状态：1可用，0不可用
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置状态：1可用，0不可用
     *
     * @param status 状态：1可用，0不可用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }
}