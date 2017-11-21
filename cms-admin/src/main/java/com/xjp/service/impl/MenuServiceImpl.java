package com.xjp.service.impl;

import com.xjp.annotation.BaseService;
import com.xjp.common.service.BaseServiceImpl;
import com.xjp.dao.MenuMapper;
import com.xjp.model.Menu;
import com.xjp.service.MenuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * 菜单
 *
 * @author xujiping 2017-11-16 16:16
 */
@Service
@Transactional
@BaseService
public class MenuServiceImpl extends BaseServiceImpl<MenuMapper, Menu, Menu> implements MenuService{

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    MenuMapper menuMapper;

    @Override
    public int deleteByPrimaryKeys(String[] ids) throws SQLException {
        for (String id :
            ids) {
            int i = menuMapper.deleteByPrimaryKey(Integer.parseInt(id));
            if (i == 0) {
                throw new SQLException("删除失败：id=" + id);
            }
        }
        return 1;
    }
}
