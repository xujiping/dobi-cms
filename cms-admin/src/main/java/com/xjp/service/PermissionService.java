package com.xjp.service;

import com.xjp.common.service.BaseService;
import com.xjp.model.Permission;

import java.sql.SQLException;

/**
* @author xujiping
* @version 2017年9月6日 下午3:58:49
* 类说明
*/
public interface PermissionService extends BaseService<Permission, Permission> {


  public int deleteByPrimaryKeys(String[] ids) throws SQLException;

}
