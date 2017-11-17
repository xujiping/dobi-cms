package com.xjp.service.impl;

import com.xjp.annotation.BaseService;
import com.xjp.common.service.BaseServiceImpl;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Upload;
import com.xjp.service.UploadService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * 上传
 *
 * @author xujiping 2017-11-16 16:16
 */
@Service
@Transactional
@BaseService
public class UploadServiceImpl extends BaseServiceImpl<UploadMapper, Upload, Upload> implements UploadService{

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    UploadMapper uploadMapper;

    @Override
    public int deleteByPrimaryKeys(String[] ids) throws SQLException {
        for (String id :
            ids) {
            int i = uploadMapper.deleteByPrimaryKey(Integer.parseInt(id));
            if (i == 0) {
                throw new SQLException("删除信息失败：id=" + id);
            }
        }
        return 1;
    }
}
