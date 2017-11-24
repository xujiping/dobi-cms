package com.xjp.web.manage.custom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
 * 
 * @author Jerry
 * 
 */
@RequestMapping("/manage/custom/about")
@Controller
public class CustomAboutController {
	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private UploadMapper uploadMapper;

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private UploadElementMapper uploadElementMapper;

	/***
	 * 关于我们元素定制
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("")
	public String index(Model model) {
		List<Upload> mienImages = uploadMapper.selectUploadByElementId(21);// 集团风采图
		List<Upload> reproduCenterImages = uploadMapper.selectUploadByElementId(22);//生殖中心
		model.addAttribute("mienImages", mienImages);
		model.addAttribute("reproduCenterImages", reproduCenterImages);
		return "manage/custom/about";
	}

	/**
	 * 集团风采图片添加
	 * 
	 * @param upload
	 * @return
	 */
	@PostMapping("mienImageAdd")
	@ResponseBody
	public Object addBigImages(Upload upload) {
		List<Upload> uploads = uploadMapper.select(upload);
		if (uploads == null || uploads.size() <= 0) {
			return new Result(ResultConstants.FILE_NOT_EXSIT, null);
		}
		UploadElement uploadElement = new UploadElement();
		uploadElement.setUploadId(uploads.get(0).getId());
		uploadElement.setElementId(21);
		int count = uploadElementMapper.insertSelective(uploadElement);
		if (count == 1) {
			return new Result(ResultConstants.SUCCESS, null);
		}
		return new Result(ResultConstants.FAILED, null);
	}
	
	  /**
     * 删除集采图
     * @param id
     * @return
     */
    @GetMapping("/mienImageDelete/{id}")
    @ResponseBody
    public Object deleteBigImages(@PathVariable(name = "id")int id){
        UploadElement uploadElement = new UploadElement();
        uploadElement.setUploadId(id);
        uploadElement.setElementId(21); 
        int delete = uploadElementMapper.delete(uploadElement);
        if (delete == 1){
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }
    
    
	/**
	 * 生殖中心图片添加
	 * 
	 * @param upload
	 * @return
	 */
	@PostMapping("reproducCenterImageAdd")
	@ResponseBody
	public Object addReproduCenterImage(Upload upload) {
		List<Upload> uploads = uploadMapper.select(upload);
		if (uploads == null || uploads.size() <= 0) {
			return new Result(ResultConstants.FILE_NOT_EXSIT, null);
		}
		UploadElement uploadElement = new UploadElement();
		uploadElement.setUploadId(uploads.get(0).getId());
		uploadElement.setElementId(22);
		int count = uploadElementMapper.insertSelective(uploadElement);
		if (count == 1) {
			return new Result(ResultConstants.SUCCESS, null);
		}
		return new Result(ResultConstants.FAILED, null);
	}
	
	  /**
     * 删除生殖中心图片
     * @param id
     * @return
     */
    @GetMapping("/reproducCenterImageDelete/{id}")
    @ResponseBody
    public Object deleteReproducCenterImage(@PathVariable(name = "id")int id){
        UploadElement uploadElement = new UploadElement();
        uploadElement.setUploadId(id);
        uploadElement.setElementId(22);  //轮播大图
        int delete = uploadElementMapper.delete(uploadElement);
        if (delete == 1){
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }
    
    
    
}
