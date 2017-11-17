package com.xjp.service;

import com.xjp.common.service.BaseService;
import com.xjp.model.Upload;

import java.sql.SQLException;

/**
 * 上传文件
 *
 * @author xujiping 2017-11-16 16:14
 */
public interface UploadService extends BaseService<Upload, Upload> {

    /**
     * 删除多个
     * @param ids
     * @return
     * @throws SQLException
     */
    public int deleteByPrimaryKeys(String[] ids) throws SQLException;

}
