package com.xjp.web.manage;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.PermissionMapper;
import com.xjp.model.Permission;
import com.xjp.service.PermissionService;

import org.apache.ibatis.session.RowBounds;
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
 * permission.
 *
 * @author xujiping 2017-09-20 15:49
 */
@Controller
@RequestMapping("/manage/permission")
public class PermissionController {

  @SuppressWarnings("SpringJavaAutowiringInspection")
  @Autowired
  private PermissionMapper permissionMapper;


  @Autowired
  private PermissionService permissionService;

  /**
   * 查询权限列表.
   *
   * @param offset 第几页
   * @param limit  每页多少行
   * @param sort   排序（未实现）
   * @param order  排序列
   * @return Map
   */
  @RequestMapping(value = "list")
  @ResponseBody
  public Object list(
      @RequestParam(required = false, defaultValue = "0", value = "offset") int offset,
      @RequestParam(required = false, defaultValue = "10", value = "limit") int limit,
      @RequestParam(required = false, value = "sort") String sort,
      @RequestParam(required = false, value = "order") String order) {
    // TODO 排序未实现
    Permission permission = new Permission();
    RowBounds rowBounds = new RowBounds(offset, limit);
    List<Permission> rows = permissionMapper.selectByRowBounds(permission, rowBounds);
    long total = permissionMapper.selectCount(permission);
    Map<String, Object> result = new HashMap<>();
    result.put("rows", rows);
    result.put("total", total);
    return result;
  }

  /**
   * 增加权限.
   *
   * @param permission permission
   * @return json
   */
  @RequestMapping(value = "add", method = RequestMethod.POST)
  @ResponseBody
  public Object doAdd(Permission permission) {
    long time = System.currentTimeMillis();
    permission.setCtime(time);
    int count = permissionMapper.insertSelective(permission);
    return new Result(ResultConstants.SUCCESS, count);
  }

  /**
   * 删除权限.
   *
   * @param ids 多个id以-分隔
   * @return json
   */
  @RequestMapping(value = "/delete/{ids}", method = RequestMethod.GET)
  @ResponseBody
  public Object delete(@PathVariable("ids") String ids) {
    int count = 0;
    try {
      count = permissionService.deleteByPrimaryKeys(ids.split("-"));
    } catch (SQLException e) {
      return new Result(ResultConstants.FAILED, count);
    }
    return new Result(ResultConstants.SUCCESS, count);
  }

  /**
   * 修改页面.
   *
   * @param id    permission_id
   * @param model model
   * @return html
   */
  @RequestMapping(value = "update/{id}")
  public String update(@PathVariable("id") String id, Model model) {
    Permission permission = permissionMapper.selectByPrimaryKey(Integer.parseInt(id));
    model.addAttribute("permission", permission);
    return "manage/permission/update";
  }

  /**
   * 修改权限信息.
   *
   * @param permission permission
   * @return json
   */
  @RequestMapping(value = "update", method = RequestMethod.POST)
  @ResponseBody
  public Object doUpdate(Permission permission) {
    int count = permissionMapper.updateByPrimaryKeySelective(permission);
    if (count != 1) {
      return new Result(ResultConstants.FAILED, count);
    }
    return new Result(ResultConstants.SUCCESS, count);
  }


  /**
   * 角色权限.
   * @param id role_id
   * @param model model
   * @return json
   */
  @RequestMapping(value = "role/{id}")
  @ResponseBody
  public Object rolePermission(@PathVariable("id") String id, Model model) {
    // TODO 角色权限
    List<Map<String, Object>> permissions = permissionMapper.selectByRoleId(Integer.parseInt(id));
    JSONArray array = new JSONArray();
    for (Map<String, Object> map :
        permissions) {
      JSONObject json = (JSONObject) JSON.toJSON(map);
      array.add(json);
    }
    return array;
  }
}
