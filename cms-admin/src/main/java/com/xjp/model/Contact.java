package com.xjp.model;

import javax.persistence.*;

@Table(name = "contact")
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 地址
     */
    private String address;

    /**
     * 热线
     */
    private String number;

    /**
     * 微信
     */
    private String wechat;

    /**
     * 微博
     */
    private String weibo;

    /**
     * 二维码地址
     */
    private String ewm;

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
     * 获取地址
     *
     * @return address - 地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置地址
     *
     * @param address 地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取热线
     *
     * @return number - 热线
     */
    public String getNumber() {
        return number;
    }

    /**
     * 设置热线
     *
     * @param number 热线
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * 获取微信
     *
     * @return wechat - 微信
     */
    public String getWechat() {
        return wechat;
    }

    /**
     * 设置微信
     *
     * @param wechat 微信
     */
    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    /**
     * 获取微博
     *
     * @return weibo - 微博
     */
    public String getWeibo() {
        return weibo;
    }

    /**
     * 设置微博
     *
     * @param weibo 微博
     */
    public void setWeibo(String weibo) {
        this.weibo = weibo;
    }

    /**
     * 获取二维码地址
     *
     * @return ewm - 二维码地址
     */
    public String getEwm() {
        return ewm;
    }

    /**
     * 设置二维码地址
     *
     * @param ewm 二维码地址
     */
    public void setEwm(String ewm) {
        this.ewm = ewm;
    }
}