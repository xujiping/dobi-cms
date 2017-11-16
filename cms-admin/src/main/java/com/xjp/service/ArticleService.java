package com.xjp.service;

import com.xjp.common.service.BaseService;
import com.xjp.model.Article;

import java.sql.SQLException;

/**
 * 文章
 *
 * @author xujiping 2017-11-16 16:14
 */
public interface ArticleService extends BaseService<Article, Article> {

    /**
     * 删除多个
     * @param ids
     * @return
     * @throws SQLException
     */
    public int deleteByPrimaryKeys(String[] ids) throws SQLException;

}
