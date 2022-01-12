package com.website.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginOut")

public class LoginOutServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置请求编码集  防止接收参数乱码
        request.setCharacterEncoding("utf-8");
        //设置响应格式为网页编码，编码为utf-8  防止输出乱码
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session=request.getSession();
        //删除登录信息
        session.removeAttribute("loginAdmin");
        response.sendRedirect("login.jsp");

    }

    }
