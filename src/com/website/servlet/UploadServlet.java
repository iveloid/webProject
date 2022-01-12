package com.website.servlet;






import com.website.dao.ArticleDao;
import com.website.entity.Article;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet( urlPatterns ="/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        // 设置请求编码集 防止接收参数乱码
        request.setCharacterEncoding("utf-8");
        // 设置响应格式为网页编码，编码为utf-8 防止输出乱码
        response.setCharacterEncoding("utf-8");


        String picurl=request.getParameter("picurl");

        String intro=request.getParameter("intro");
        String id=request.getParameter("id");
        String title=request.getParameter("title");
        String content=request.getParameter("content");


        //创建目录
        File path = new File(request.getSession().getServletContext().getRealPath("/image"));
        if (!path.exists()){
            path.mkdir();
        }
        //获取文件
        Part img = request.getPart("picurl");

        //文件全路径
        String separator = File.separator;
        System.out.println("separator:"+separator);
        //如果是tomcat8及以上则使用这种方式获取文件名称
        String submittedFileName = img.getSubmittedFileName();

        //如果是tomcat7，则使用这种方式获取文件名称

//        String cd = img.getHeader("Content-Disposition");
        //截取不同类型的文件需要自行判断
//        String submittedFileName = cd.substring(cd.lastIndexOf("=")+2, cd.length()-1);

        System.out.println("submittedFileName:"+submittedFileName);
        String filePath = path.getPath()+separator+submittedFileName;
        System.out.println("filePath:"+filePath);
        String filePath1="image/"+submittedFileName;
        //写入文件
        img.write(filePath);
        //输出信息
        System.out.println("File Upload : " + filePath);
//        PrintWriter out = response.getWriter();
//        out.println("File Upload : " + filePath);


        //创建SimpleDateFormat对象，指定样式    2019-05-13 22:39:30
        SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //要格式化的Date对象
        Date date=new Date();
        //使用format()方法格式化Date对象为字符串，返回字符串

        String format = sdf1.format(date);



        Article obj=new  Article();

        obj.setPicurl(filePath1);
        obj.setCreatetime(new Date());
        obj.setIntro(intro);

        obj.setTitle(title);
        obj.setContent(content);
        ArticleDao articleDao = new ArticleDao();
        articleDao.save(obj);//调用数据库添加
        response.sendRedirect("ArticleServlet?type=query");


    }
}
