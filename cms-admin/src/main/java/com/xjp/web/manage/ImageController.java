package com.xjp.web.manage;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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

/**
 * 图片
 *
 * @author xujiping 2017-11-15 15:52
 */

@Controller
@RequestMapping("/manage/image")
public class ImageController {

    private Logger _LOGGER = LoggerFactory.getLogger(ImageController.class);

    @Value("${dobi.upload.image}")
    private String imageUploadPath;

    @GetMapping("index")
    public String index() {
        return "manage/image/index";
    }

    /**
     * 单文件上传
     * @param file
     * @return
     */
    @PostMapping("upload")
    @ResponseBody
    public Object oneUpload(@RequestParam("file") MultipartFile file) {
        String fileName = "";
        File newFile;
        if (!file.isEmpty()) {
            try {
                fileName = file.getOriginalFilename();
                newFile = new File(imageUploadPath + fileName);
                BufferedOutputStream out = new BufferedOutputStream(
                    new FileOutputStream(newFile));
                out.write(file.getBytes());
                out.flush();
                out.close();
            } catch (FileNotFoundException e) {
                _LOGGER.error("上传图片-文件未找到：" + imageUploadPath + fileName, e);
                return new Result(ResultConstants.FAILED, e.getMessage());
            } catch (IOException e) {
                _LOGGER.error("上传图片-上传失败。", e);
                return new Result(ResultConstants.FAILED, e.getMessage());
            }
            return new Result(ResultConstants.SUCCESS, null);
        }
        return new Result(ResultConstants.FAILED, null);
    }

}
