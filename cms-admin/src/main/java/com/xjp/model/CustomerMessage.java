package com.xjp.model;

import javax.persistence.*;

@Table(name = "customer_message")
public class CustomerMessage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 您的姓名
     */
    private String name;

    /**
     * 微信号
     */
    private String weixin;

    /**
     * 电子邮箱
     */
    private String mail;

    /**
     * 手机号
     */
    private String phone;

    /**
     * 内容
     */
    private String content;

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
     * 获取您的姓名
     *
     * @return name - 您的姓名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置您的姓名
     *
     * @param name 您的姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取微信号
     *
     * @return weixin - 微信号
     */
    public String getWeixin() {
        return weixin;
    }

    /**
     * 设置微信号
     *
     * @param weixin 微信号
     */
    public void setWeixin(String weixin) {
        this.weixin = weixin;
    }

    /**
     * 获取电子邮箱
     *
     * @return mail - 电子邮箱
     */
    public String getMail() {
        return mail;
    }

    /**
     * 设置电子邮箱
     *
     * @param mail 电子邮箱
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    /**
     * 获取手机号
     *
     * @return phone - 手机号
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置手机号
     *
     * @param phone 手机号
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取内容
     *
     * @return content - 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
    }
}