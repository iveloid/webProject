package com.website.servlet;


import com.website.dao.ArticleDao;
import com.website.entity.Article;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

/**
* ClassName:ArticleServlet
* Description:
*/
@WebServlet(name = "ArticleServlet",urlPatterns = "/ArticleServlet")
public class ArticleServlet extends HttpServlet {

    ArticleDao articleDao = new ArticleDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置请求编码集 防止接收参数乱码
        request.setCharacterEncoding("utf-8");
        // 设置响应格式为网页编码，编码为utf-8 防止输出乱码
        response.setCharacterEncoding("utf-8");
        if(request.getParameter("type").equals("save")){
            //插入操作业务...
            save(request,response);
        }else if (request.getParameter("type").equals("delete")){
            //删除操作业务...
            delete(request,response);
        }else if (request.getParameter("type").equals("update")){
            //修改操作业务...
            update(request,response);
        }else if (request.getParameter("type").equals("query")){
            //查询所有操作业务...
            query(request,response);
        }else if (request.getParameter("type").equals("query1")){
            //查询所有操作业务...
            query1(request,response);
        }else if (request.getParameter("type").equals("get")){
            //查询id操作业务...
            get(request,response);
        }else if (request.getParameter("type").equals("edit")){
            //查询id获取 跳转编辑页面...
            edit(request,response);
        }else{
            System.err.println("动作类型不匹配！");
        }

        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        writer.write("write something here!");

        writer.flush();
        writer.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }




    //添加Article信息
    protected void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String picurl=request.getParameter("picurl");
        String createtime=request.getParameter("createtime");
        String intro=request.getParameter("intro");
        String title=request.getParameter("title");
        String content=request.getParameter("content");

        Article obj=new  Article();

        obj.setPicurl(picurl);
        obj.setCreatetime(new Date());
        obj.setIntro(intro);
        obj.setTitle(title);
        obj.setContent(content);

        articleDao.save(obj);//调用数据库添加
        response.sendRedirect("ArticleServlet?type=query");
    }

    //修改Article信息
    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String picurl=request.getParameter("picurl");
        String createtime=request.getParameter("createtime");
        String intro=request.getParameter("intro");
        String id=request.getParameter("id");
        String title=request.getParameter("title");
        String content=request.getParameter("content");

        Article obj=new  Article();

        obj.setPicurl(picurl);
        obj.setCreatetime(new Date());
        obj.setIntro(intro);
         obj.setId(Integer.parseInt(id));
        obj.setTitle(title);
        obj.setContent(content);

        articleDao.update(obj); //调用数据库修改功能
        response.sendRedirect("ArticleServlet?type=query");
    }


    //根据主键id删除Article信息 id是整数
    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr=request.getParameter("id");
        Integer id= Integer.parseInt(idStr);
        articleDao.delete(id);//调用数据库删除
        response.sendRedirect("ArticleServlet?type=query");
    }


    //Article查询数据库中的所有数据
    protected void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用数据库查询所有方法
        List<Article>  articleList=articleDao.queryAll(); //调用数据库查询所有
        request.setAttribute("articleList",articleList);   //绑定接受参数
        request.getRequestDispatcher("articleList.jsp").forward(request,response);
    }


    //Article查询数据库中的所有数据
    protected void query1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用数据库查询所有方法
        List<Article>  articleList=articleDao.queryAll(); //调用数据库查询所有
        request.setAttribute("articleList",articleList);   //绑定接受参数
        request.getRequestDispatcher("xinwenIndex.jsp").forward(request,response);
    }

    //Article根据主键id查询数据
    protected void get(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用数据库查询所有方法
        String idStr=request.getParameter("id");
        Integer id= Integer.parseInt(idStr);
        Article  article=articleDao.queryById(id); //调用数据库根据主键查询
        request.setAttribute("article",article);   //绑定接受参数
        request.getRequestDispatcher("xinwen.jsp").forward(request,response);
    }

    //Article根据主键id查询数据 跳转到编辑页面
    protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用数据库查询所有方法
        String idStr=request.getParameter("id");
        Integer id= Integer.parseInt(idStr);
        Article  article=articleDao.queryById(id); //调用数据库根据主键查询
        request.setAttribute("article",article);   //绑定接受参数
        request.getRequestDispatcher("articleUpdate.jsp").forward(request,response);
    }




}
