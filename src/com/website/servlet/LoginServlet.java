package com.website.servlet;



import com.website.dao.UserinfoDao;

import com.website.entity.Userinfo;
import org.apache.commons.lang.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置请求编码集 防止接收参数乱码
		request.setCharacterEncoding("utf-8");
		// 设置响应格式为网页编码，编码为utf-8 防止输出乱码
		response.setContentType("text/html;charset=UTF-8");
		// 获取session
		HttpSession session = request.getSession();

		String name = request.getParameter("username");
		String password = request.getParameter("password");
		String vercode = request.getParameter("vercode");


		if(StringUtils.isBlank(name)) {
			request.setAttribute("msg", "用户名不能为空");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		if (StringUtils.isBlank(password)) {
			request.setAttribute("msg", "密码不能为空");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
			// 判断用户信息是否正确
			Userinfo userinfo = new Userinfo();
			UserinfoDao userinfoDao = new UserinfoDao();
			Userinfo login = userinfoDao.login(name);

			if (null == login) {// 用户名不存在
				request.setAttribute("msg", "用户名不存在");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;
			}

			// 判断密码正确
			// 将密码进行加密之后在进行比较
			// 将加密后的字符串和数据库比较 相等则登录成功
			// password= MD5Util.getMd5(password);
			System.out.println("password = " + password);
			if (!login.getPassword().equals(password)) {
				request.setAttribute("msg", "登录密码错误");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;
			}

		// 登录成功
		// 登陆成功将用户信息放入session中 方便以后调用
			session.setAttribute("loginAdmin", login);
			response.sendRedirect("main.jsp");


		}

	}


