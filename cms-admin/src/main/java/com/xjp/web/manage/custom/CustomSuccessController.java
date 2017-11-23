package com.xjp.web.manage.custom;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.UploadElementMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Upload;
import com.xjp.model.UploadElement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 成功案例元素定制
 *
 * @author xujiping 2017-11-21 15:58
 */
@Controller
@RequestMapping("/manage/custom/success")
public class CustomSuccessController {

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadElementMapper uploadElementMapper;

    /**
     * 成功案例元素定制页面
     * @param model
     * @return
     */
    @GetMapping("")
    public String index(Model model) {
        return "manage/custom/success";
    }

    /**
     * 成功案例图片列表
     * @return
     */
    @GetMapping("images")
    @ResponseBody
    public Object images(){
        List<Upload> rows = uploadMapper.selectUploadByElementId(2);
        long total = uploadMapper.selectCountUploadByElementId(2);
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
    }

    /**
     * 添加轮播大图
     * @param upload
     * @return
     */
    @PostMapping("add")
    @ResponseBody
    public Object addBigImages(Upload upload){
        List<Upload> uploads = uploadMapper.select(upload);
        if (uploads == null || uploads.size() <= 0){
            return new Result(ResultConstants.FILE_NOT_EXSIT, null);
        }
        UploadElement uploadElement = new UploadElement();
        uploadElement.setUploadId(uploads.get(0).getId());
        uploadElement.setElementId(2);
        int count = uploadElementMapper.insertSelective(uploadElement);
        if (count == 1){
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }

    /**
     * 删除图片
     * @param id
     * @return
     */
    @GetMapping("delete/{id}")
    @ResponseBody
    public Object deleteBigImages(@PathVariable(name = "id")int id){
        UploadElement uploadElement = new UploadElement();
        uploadElement.setUploadId(id);
        uploadElement.setElementId(2);
        int delete = uploadElementMapper.delete(uploadElement);
        if (delete == 1){
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }

}
