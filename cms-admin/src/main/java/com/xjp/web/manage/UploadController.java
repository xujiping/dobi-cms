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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 上传文件信息控制器
 *
 * @author xujiping 2017-11-16 16:18
 */
@Controller
@RequestMapping("/manage/upload")
public class UploadController {

    private static Logger _log = LoggerFactory.getLogger(UploadController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadService uploadService;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    @RequestMapping(value = "index")
    public String index() {
        return "manage/upload/index";
    }

    /**
     * 查询上传文件信息列表.
     *
     * @param offset 第几页
     * @param limit  每页多少行
     * @param sort   排序（未实现）
     * @param order  排序列
     * @return Map
     */
//    @RequiresPermissions("cms:upload:view")
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

    /**
     * 新增页面
     * @return
     */
    @RequestMapping(value = "add")
    public String add() {
        return "manage/upload/add";
    }

    /**
     * 增加
     *
     * @param upload upload
     * @return json
     */
//    @RequiresPermissions(value = "cms:upload:create")
    @RequestMapping(value = "add", method = RequestMethod.POST)
    @ResponseBody
    public Object doAdd(Upload upload) {
        int count = uploadMapper.insertSelective(upload);
        return new Result(ResultConstants.SUCCESS, count);
    }

    /**
     * 删除
     *
     * @param ids 多个id以-分隔
     * @return json
     */
    @RequestMapping(value = "/delete/{ids}", method = RequestMethod.GET)
    @ResponseBody
    public Object delete(@PathVariable("ids") String ids) {
        int count = 0;
        try {
            count = uploadService.deleteByPrimaryKeys(ids.split("-"));
            if (count != 1){
                return new Result(ResultConstants.FAILED, count);
            }
        } catch (SQLException e) {
            return new Result(ResultConstants.FAILED, count);
        }
        return new Result(ResultConstants.SUCCESS, count);
    }

    /**
     * 修改页面
     *
     * @param id    user_id
     * @param model model
     * @return html
     */
    @RequestMapping(value = "update/{id}")
    public String update(@PathVariable("id") String id, Model model) {
        Upload upload = uploadMapper.selectByPrimaryKey(Integer.parseInt(id));
        model.addAttribute("upload", upload);
        return "manage/upload/update";
    }

    /**
     * 修改
     *
     * @param upload upload
     * @return json
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseBody
    public Object doUpdate(Upload upload) {
        int count = uploadMapper.updateByPrimaryKeySelective(upload);
        if (count != 1) {
            return new Result(ResultConstants.FAILED, count);
        }
        return new Result(ResultConstants.SUCCESS, count);
    }

}
