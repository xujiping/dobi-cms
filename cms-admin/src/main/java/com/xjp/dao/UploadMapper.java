package com.xjp.dao;

import com.xjp.model.Upload;

import java.util.List;

import tk.mybatis.mapper.common.Mapper;

public interface UploadMapper extends Mapper<Upload> {

    public List<Upload> selectUploadByElementId(int id);

    public long selectCountUploadByElementId(int id);

}