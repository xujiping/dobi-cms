package com.xjp.service.impl;

import com.xjp.annotation.BaseService;
import com.xjp.common.service.BaseServiceImpl;
import com.xjp.dao.ArticleMapper;
import com.xjp.model.Article;
import com.xjp.service.ArticleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * 文章
 *
 * @author xujiping 2017-11-16 16:16
 */
@Service
@Transactional
@BaseService
public class ArticleServiceImpl extends BaseServiceImpl<ArticleMapper, Article, Article> implements ArticleService{

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    ArticleMapper articleMapper;

    @Override
    public int deleteByPrimaryKeys(String[] ids) throws SQLException {
        for (String id :
            ids) {
            int i = articleMapper.deleteByPrimaryKey(Integer.parseInt(id));
            if (i == 0) {
                throw new SQLException("删除文章失败：id=" + id);
            }
        }
        return 1;
    }
}
