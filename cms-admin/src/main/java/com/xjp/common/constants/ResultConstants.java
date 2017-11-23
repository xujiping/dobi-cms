package com.xjp.common.constants;

/**
 * 接口常量枚举类.
 *
 * @author xujiping 2017-09-21 10:05
 */
public enum ResultConstants {

  FAILED(0, "失败"),
  SUCCESS(1, "成功"),

  FILE_TYPE_ERROR(20001, "文件格式不支持"),
  INVALID_LENGTH(20002, "长度不符合"),
  INVALID_PARAMETER(20003, "类型不符合"),
  no_permission(20004, "无该权限"),
  FILE_EXSIT(20005, "文件已存在"),
  FILE_NOT_EXSIT(20006, "文件不存在");

  public int code;

  public String message;

  ResultConstants(int code, String message) {
    this.code = code;
    this.message = message;
  }

  public int getCode() {
    return code;
  }

  public void setCode(int code) {
    this.code = code;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }
}
