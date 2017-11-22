package com.xjp.service;

import com.xjp.common.service.BaseService;
import com.xjp.model.Contact;

import java.sql.SQLException;

/**
 * 文章
 *
 * @author xujiping 2017-11-16 16:14
 */
public interface ContactService extends BaseService<Contact, Contact> {

    /**
     * 删除多个
     * @param ids
     * @return
     * @throws SQLException
     */
    public int deleteByPrimaryKeys(String[] ids) throws SQLException;

}
