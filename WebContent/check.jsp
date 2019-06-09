<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>用户名：<%= request.getParameter("username") %></h1>
<h2>密码：<%= request.getParameter("password") %></h2>
	<%
	  	String username=(String)request.getParameter("username");
		String password=(String)request.getParameter("password");
		if(username.equals("abc")){
			if(password.equals("123456")){
				request.getRequestDispatcher("success.jsp").forward(request,response);
			}
		}
		else{
			request.getRequestDispatcher("failure.jsp").forward(request,response);
		}
	%>
</body>
</html>