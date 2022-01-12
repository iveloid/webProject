package com.website.dao;

import com.website.entity.Userinfo;
import com.website.util.DbUtil;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
* ClassName:UserinfoDao
* Description:
*/
public class UserinfoDao {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;


    public Userinfo login(String name) {
        Userinfo userinfo=null;
        String sql="select * from userinfo where username=?";
        try {
            //获取数据库连接
            Connection conn = DbUtil.getCon();
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1,name);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                userinfo  = new Userinfo();
                userinfo.setId(rs.getInt("id"));
                userinfo.setUsername(rs.getString("username"));
                userinfo.setPassword(rs.getString("password"));
                userinfo.setTel(rs.getString("tel"));
                userinfo.setAddr(rs.getString("addr"));
                userinfo.setGender(rs.getString("gender"));
                userinfo.setRemark(rs.getString("remark"));
                userinfo.setRole(rs.getString("role"));
            }
            rs.close();  //释放资源
            pstm.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userinfo;
    }
}
