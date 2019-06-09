<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.mysql.jdbc.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎进入商品查询系统</title>
</head>
<body>
	<h1>已进入</h1>
	<%
		Connection conn;
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://127.0.0.1:3306/TEST?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String username="root";
		String password="root";
		Statement stmt=null;
		ResultSet rs=null;
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,username,password);
			if(!conn.isClosed()){
				out.print("连接数据库成功！");
				System.out.println("Succeeded connecting to database!");
			}
				out.print("<br/>");
				String sql="SELECT * FROM employees";
				stmt = conn.createStatement();
				rs=stmt.executeQuery(sql);
				out.print("查询结果：");
				out.print("<br/>");
				out.print("编号"+"\t"+"年龄"+"\t"+"姓氏"+"\t"+"名字");
				out.print("<br/>");
				int age,id;
				String firstName,lastName;
				while(rs.next()) {
					age=rs.getInt("age");
					id=rs.getInt("id");
					firstName=rs.getString("first name");
					lastName=rs.getString("last name");
					System.out.println(id+"\t"+age+"\t"+firstName+"\t"+lastName);
					out.print(id+"\t"+age+"\t"+firstName+"\t"+lastName);
					out.print("<br/>");
				}
				rs.close();
				conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("Sorry,can't find the driver!");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			System.out.println("Gained data from database successfully!");
		}
	%>
</body>
</html>