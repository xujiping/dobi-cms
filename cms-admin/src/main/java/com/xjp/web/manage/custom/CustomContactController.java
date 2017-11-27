package com.xjp.web.manage.custom;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.ContactMapper;
import com.xjp.dao.UploadElementMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Contact;
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

import java.util.List;

/**
 * 首页元素定制控制器
 *
 * @author xujiping 2017-11-21 15:58
 */
@Controller
@RequestMapping("/manage/custom/contact")
public class CustomContactController {

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadElementMapper uploadElementMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ContactMapper contactMapper;

    @GetMapping("")
    public String index(Model model) {
        Contact contact = contactMapper.selectByPrimaryKey(1);
        model.addAttribute("contact", contact);
        return "manage/custom/contact";
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
        UploadElement uploadElement = new UploadElement();
        uploadElement.setUploadId(uploads.get(0).getId());
        uploadElement.setElementId(1);
        int count = uploadElementMapper.insertSelective(uploadElement);
        if (count == 1){
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }

    /**
     * 删除轮播大图
     * @param id
     * @return
     */
    @GetMapping("delete/{id}")
    @ResponseBody
    public Object deleteBigImages(@PathVariable(name = "id")int id){
        UploadElement uploadElement = new UploadElement();
        uploadElement.setUploadId(id);
        uploadElement.setElementId(1);  //轮播大图
        int delete = uploadElementMapper.delete(uploadElement);
        if (delete == 1){
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }

}
