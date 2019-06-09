<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>请稍后</h1>
	<h2>你要找的是：<%=request.getParameter("Name") %></h2>
	<%
		String Name=(String)request.getParameter("Name");
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
			rs=stmt.executeQuery("select * from good where Name="+"\""+Name+"\";");
			out.print("查询结果：");
			out.print("<br/>");
			out.print("编号"+"\t\t"+"种类"+"\t\t"+"名称"+"\t\t"+"价格");
			out.print("<br/>");
			int id,kindNo,price;
			String name;
			while(rs.next()){
				id=rs.getInt("ID");
				kindNo=rs.getInt("KindNo");
				name=rs.getString("Name");
				price=rs.getInt("Price");
				out.print(id+"\t"+kindNo+"\t"+name+"\t"+price);%><br/><%
				//out.print("<br/");
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