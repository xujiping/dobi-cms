package com.xjp.service.impl;

import com.xjp.annotation.BaseService;
import com.xjp.common.service.BaseServiceImpl;
import com.xjp.dao.ContactMapper;
import com.xjp.model.Contact;
import com.xjp.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * 联系我们
 *
 * @author dt 2017-11-22 21:56
 */
@Service
@Transactional
@BaseService
public class ContactServiceImpl extends BaseServiceImpl<ContactMapper, Contact, Contact> implements ContactService{

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    ContactMapper contactMapper;

    @Override
    public int deleteByPrimaryKeys(String[] ids) throws SQLException {
        for (String id :
            ids) {
            int i = contactMapper.deleteByPrimaryKey(Integer.parseInt(id));
            if (i == 0) {
                throw new SQLException("删除数据失败：id=" + id);
            }
        }
        return 1;
    }
}
