package com.xjp.web.manage;

import com.xjp.common.constants.Constants;
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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
 * 上传文件信息控制器
 *
 * @author xujiping 2017-11-16 16:18
 */
@Controller
@RequestMapping("/manage/upload")
public class UploadController {

    private static Logger _LOGGER = LoggerFactory.getLogger(UploadController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadService uploadService;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    @Value("${dobi.upload}")
    private String uploadPath;

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

    /**
     * 单文件上传
     * @param file
     * @return
     */
    @PostMapping("upload")
    public Object oneUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        String fileName = "";
        File newFile;
        String suffix = "";  //文件后缀名
        int type = 0;  //未知类型
        Upload upload = new Upload();
        // String rootPath = request.getSession().getServletContext().getRealPath("/upload/");
        if (!file.isEmpty()) {
            try {
                fileName = file.getOriginalFilename();
                //查询文件名称是否已存在
                upload.setName(fileName);
                List<Upload> uploads = uploadMapper.select(upload);
                if (uploads != null & uploads.size() >= 1){
                    return "manage/image/add";
                }
                suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
                if (suffix.toLowerCase().equals("pdf")){
                    type = Constants.FILE_TYPE_PDF;
                }
                if (suffix.toLowerCase().equals("jpg") || suffix.equals("png")){
                    type = Constants.FILE_TYPE_IMAGE;
                }
                newFile = new File(uploadPath + fileName);
                BufferedOutputStream out = new BufferedOutputStream(
                    new FileOutputStream(newFile));
                out.write(file.getBytes());
                out.flush();
                out.close();
                //写入文件信息到数据库中
                upload.setSuffix(suffix);
                upload.setType(type);  //图片
                int count = uploadMapper.insertSelective(upload);
                if (count != 1){
                    _LOGGER.error("上传图片-信息写入数据库失败。");
                    return "manage/image/add";
                }
            } catch (FileNotFoundException e) {
                _LOGGER.error("上传图片-文件未找到：" + uploadPath + fileName, e);
                return "manage/image/add";
            } catch (IOException e) {
                _LOGGER.error("上传图片-上传失败。", e);
                return "manage/image/add";
            }
            return "manage/image/index";
        }
        return "manage/image/add";
    }

}
