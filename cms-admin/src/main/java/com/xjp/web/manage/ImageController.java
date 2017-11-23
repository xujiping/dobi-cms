package com.xjp.web.manage;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Upload;
import com.xjp.service.UploadService;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * 图片
 *
 * @author xujiping 2017-11-15 15:52
 */

@Controller
@RequestMapping("/manage/image")
public class ImageController {

    private Logger _LOGGER = LoggerFactory.getLogger(ImageController.class);

    @GetMapping("index")
    public String index() {
        return "manage/image/index";
    }

    @Autowired
    private UploadService uploadService;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    /**
     * 查询上传文件信息列表.
     *
     * @param offset 第几页
     * @param limit  每页多少行
     * @param sort   排序（未实现）
     * @param order  排序列
     * @return Map
     */
    // @RequiresPermissions("cms:upload:view")
    @RequestMapping(value = "list")
    @ResponseBody
    public Object list(
        @RequestParam(required = false, defaultValue = "0", value = "offset") int offset,
        @RequestParam(required = false, defaultValue = "10", value = "limit") int limit,
        @RequestParam(required = false, value = "sort") String sort,
        @RequestParam(required = false, value = "order") String order) {
        // TODO 排序未实现
        Upload upload = new Upload();
        RowBounds rowBounds = new RowBounds(offset, limit);
        List<Upload> rows = uploadMapper.selectByRowBounds(upload, rowBounds);
        long total = uploadMapper.selectCount(upload);
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
    }



    @RequestMapping(value = "add")
    public String add() {
        return "manage/image/add";
    }

    /**
     * 删除图片
     *
     * @param ids 多个id以-分隔
     * @return json
     */
    @GetMapping(value = "/delete/{ids}")
    @ResponseBody
    public Object delete(@PathVariable("ids") String ids) {
        int count = 0;
        try {
            count = uploadService.deleteByPrimaryKeys(ids.split("-"));
        } catch (SQLException e) {
            return new Result(ResultConstants.FAILED, count);
        }
        return new Result(ResultConstants.SUCCESS, count);
    }

}
