package com.website.entity;

import java.util.Date;

/**
* ClassName:Article
* Description:
*/
public class Article {

    /**
    * 新闻ID
    */
        private Integer id;
    /**
    * 新闻标题
    */
        private String title;
    /**
    * 新闻内容
    */
        private String content;
    /**
    * 创建时间
    */
        private Date createtime;
    /**
    * 备注
    */
        private String intro;
    /**
    * 图片
    */
        private String picurl;


        public Integer getId() {
        return id;
        }

        public void setId(Integer id) {
        this.id = id;
        }

        public String getTitle() {
        return title;
        }

        public void setTitle(String title) {
        this.title = title;
        }

        public String getContent() {
        return content;
        }

        public void setContent(String content) {
        this.content = content;
        }

        public Date getCreatetime() {
        return createtime;
        }

        public void setCreatetime(Date createtime) {
        this.createtime = createtime;
        }


        public String getIntro() {
        return intro;
        }

        public void setIntro(String intro) {
        this.intro = intro;
        }

        public String getPicurl() {
        return picurl;
        }

        public void setPicurl(String picurl) {
        this.picurl = picurl;
        }


}