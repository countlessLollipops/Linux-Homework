<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>插入操作</title>
</head>
<body>
	<%
		int id=Integer.parseInt(request.getParameter("ID"));	
		int kindNo=Integer.parseInt(request.getParameter("KindNo"));
		String name=(String)request.getParameter("Name");
		int price=Integer.parseInt(request.getParameter("Price"));
		Connection conn;
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://127.0.0.1:3306/goods?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
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
			stmt=conn.createStatement();
			stmt.executeUpdate("insert into good values('"+id+"','"+kindNo+"','"+name+"','"+price+"');");
			//stmt.setInt(1,id);
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