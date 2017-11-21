package com.xjp.service;

import com.xjp.common.service.BaseService;
import com.xjp.model.Menu;

import java.sql.SQLException;

/**
 * 菜单
 *
 * @author xujiping 2017-11-16 16:14
 */
public interface MenuService extends BaseService<Menu, Menu> {

    /**
     * 删除多个
     * @param ids
     * @return
     * @throws SQLException
     */
    public int deleteByPrimaryKeys(String[] ids) throws SQLException;

}
