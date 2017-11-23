package com.xjp.web.manage.custom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.UploadElementMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Upload;
import com.xjp.model.UploadElement;

/**
 * 关于我们元素定制
 * @author Jerry
 *
 */
@Controller
@RequestMapping("/manage/custom/about")
public class CustomAboutController {
	   @SuppressWarnings("SpringJavaAutowiringInspection")
	    @Autowired
	    private UploadMapper uploadMapper;

	    @SuppressWarnings("SpringJavaAutowiringInspection")
	    @Autowired
	    private UploadElementMapper uploadElementMapper;

	    @GetMapping("")
	    public String index(Model model) {
	        List<Upload> bigImages = uploadMapper.selectUploadByElementId(2);
//	        model.addAttribute("bigImages", bigImages);
	        return "manage/custom/about";
	    }
	    
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
	    
	    
	    
}
