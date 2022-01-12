package com.website.entity;

/**
* ClassName:Userinfo
* Description:
*/
public class Userinfo {

    /**
    * ID
    */
        private Integer id;
    /**
    * 用户名
    */
        private String username;
    /**
    * 密码
    */
        private String password;
    /**
    * 电话
    */
        private String tel;
    /**
    * 地址
    */
        private String addr;
    /**
    * 性别
    */
        private String gender;
    /**
    * 备注
    */
        private String remark;
    /**
    * 角色
    */
        private String role;


        public Integer getId() {
        return id;
        }

        public void setId(Integer id) {
        this.id = id;
        }

        public String getUsername() {
        return username;
        }

        public void setUsername(String username) {
        this.username = username;
        }

        public String getPassword() {
        return password;
        }

        public void setPassword(String password) {
        this.password = password;
        }

        public String getTel() {
        return tel;
        }

        public void setTel(String tel) {
        this.tel = tel;
        }

        public String getAddr() {
        return addr;
        }

        public void setAddr(String addr) {
        this.addr = addr;
        }

        public String getGender() {
        return gender;
        }

        public void setGender(String gender) {
        this.gender = gender;
        }

        public String getRemark() {
        return remark;
        }

        public void setRemark(String remark) {
        this.remark = remark;
        }

        public String getRole() {
        return role;
        }

        public void setRole(String role) {
        this.role = role;
        }


}