package com.website.dao;



import com.website.entity.Article;
import com.website.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
* ClassName:ArticleDao
* Description:
*/
public class ArticleDao {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    /**
    * MethodName :保存
    * Description: 将一个属性与数据库表属性相对应的对象插入到数据库中
    * @param article 数据对象
    */
    public int  save(Article article){

        String sql = "insert into article (id,title,content,createtime,intro,picurl)  values (?,? ,? ,? ,? ,?)" ;
        try {
            conn = DbUtil.getCon();
            pstmt = conn.prepareStatement(sql);
            pstmt.setObject(1,null);
            pstmt.setObject(2,article.getTitle());
            pstmt.setObject(3,article.getContent());
            pstmt.setObject(4,article.getCreatetime());
            pstmt.setObject(5,article.getIntro());
            pstmt.setObject(6,article.getPicurl());
            int i =  pstmt.executeUpdate();
            return i;
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            DbUtil.close(conn,pstmt);
        }
        return 0;
    }

    /**
    * MethodName: 删除
    * Description: 将一个属性与数据库表属性相对应的对象从数据库中删除(通过设置该对象id,通过id删除信息记录)
    */
    public int delete(int id){
        String sql = "delete from article  where id = ?" ;
        try {
            conn = DbUtil.getCon();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            int i = pstmt.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.close(conn,pstmt);
        }
        return 0;
    }

    /**
    * MethodName 修改
    * Description 通过id修改数据库表
    * @param article 与数据库表对应的对象
    */
    public int update(Article article) {
        String sql = "update article set id = ?,title = ?,content = ?,createtime = ?,intro = ?,picurl = ? where id = ?";
        try {
            conn = DbUtil.getCon();
            pstmt = conn.prepareStatement(sql);
            pstmt.setObject(1,article.getId());
            pstmt.setObject(2,article.getTitle());
            pstmt.setObject(3,article.getContent());
            pstmt.setObject(4,article.getCreatetime());
            pstmt.setObject(5,article.getIntro());
            pstmt.setObject(6,article.getPicurl());
            pstmt.setInt(7,article.getId());
            int i = pstmt.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.close(conn,pstmt);
        }
        return 0;
    }

    /**
    * MethodName 查询
    * Description 通过id查询数据库信息记录(通过设置该对象id,通过id查询信息记录)
    */
    public Article queryById(int id){
        String sql = "select * from article where id = ?" ;
        try {
            conn = DbUtil.getCon();
            pstmt = conn.prepareStatement(sql);//预编译sql语句
            pstmt.setInt(1,id);
            rs = pstmt.executeQuery();
            // 获取查询的值
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getInt("id"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setCreatetime(rs.getDate("createtime"));
                article.setIntro(rs.getString("intro"));
                article.setPicurl(rs.getString("picurl"));
                return article;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.close(conn,pstmt);
        }
        return null;
    }

    /**
    * MethodName 查询
    * Description 通过id查询数据库信息记录(通过设置该对象id,通过id查询信息记录)
    */
    public List<Article> queryAll(){
        String sql = "select * from article" ;
        List<Article> list = new ArrayList<Article>();
        try {
            conn = DbUtil.getCon();
            pstmt = conn.prepareStatement(sql);
            Class clazz = Article.class;
            rs = pstmt.executeQuery();
            // 获取查询的值
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getInt("id"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setCreatetime(rs.getDate("createtime"));
                article.setIntro(rs.getString("intro"));
                article.setPicurl(rs.getString("picurl"));
                list.add(article);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.close(conn,pstmt);
        }
        return list;
    }

}
