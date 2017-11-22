package com.xjp.model;

import javax.persistence.*;

@Table(name = "element")
public class Element {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 菜单元素名称
     */
    private String name;

    /**
     * 所属菜单ID
     */
    @Column(name = "menu_id")
    private Integer menuId;

    /**
     * 状态：1可用 0不可用
     */
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
     * 获取菜单元素名称
     *
     * @return name - 菜单元素名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置菜单元素名称
     *
     * @param name 菜单元素名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取所属菜单ID
     *
     * @return menu_id - 所属菜单ID
     */
    public Integer getMenuId() {
        return menuId;
    }

    /**
     * 设置所属菜单ID
     *
     * @param menuId 所属菜单ID
     */
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
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
}