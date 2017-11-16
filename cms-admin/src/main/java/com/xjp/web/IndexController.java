package com.xjp.web;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

/**
 * index.
 *
 * @author xujiping 2017-09-19 15:05
 */

@Controller
public class IndexController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    @Value("${dobi.upload}")
    private String uploadPath;

    /**
     * index.
     *
     * @return index.html
     */
    @RequestMapping(value = {"", "/index"})
    public String index() {
        return "index";
    }

    /**
     * 读取文件
     */
    @GetMapping("/{filename:.+}")
    @ResponseBody
    public void getFile(@PathVariable String filename, HttpServletResponse response) {
        FileInputStream fis = null;
        OutputStream os = null;
        try {
            fis = new FileInputStream(uploadPath + filename);
            os = response.getOutputStream();
            int count = 0;
            byte[] buffer = new byte[1024 * 8];
            while ((count = fis.read(buffer)) != -1) {
                os.write(buffer, 0, count);
                os.flush();
            }
            fis.close();
            os.close();
        } catch (Exception e) {
            _LOGGER.error("读取文件失败。", e);
        }
    }
}
