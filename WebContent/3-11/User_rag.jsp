<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="" method="post" onsubmit="return checkpwd()">
			<table border="1">
				<tr>
					<td>填写用户注册信息</td>
				</tr>
				<tr>
					<td>用户名</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="password" name="pwd" id="pwd"></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input type="password" name="confirm" id="confirm"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="radio" name="sex" checked="checked">男  <input type="radio" name="sex">女</td>
				</tr>
				<tr>
					<td>email</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>所属学院</td>
					<td>
						<select name="school">
						<%
							for(String str: new String[]{"人工智能学院", "电子信息学院", "汽车工程学院", "培训学院"}){
								out.println("<option value="+str+">"+str+"</option>");
							}
						%>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<p>选择 头像</p>
						<img src="1.png" id="img_show" width="100px" height="100px">
					</td>
					<td>
						<select name="imgshow" onchange="changeimg()">
						<%
							for(int i=0; i<3; i++){
								out.println("<option value="+i+">"+i+"</option>");
							}
						%>
						</select>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="提交"></td>
					<td><input type="reset" value="重置"></td>
				</tr>
			</table>
		</form>
		<span>
			<%
				request.setCharacterEncoding("utf-8");
				String username = request.getParameter("username");
				if(username != null){
					String password = request.getParameter("pwd");
					String sex = request.getParameter("sex");
					String email = request.getParameter("email");
					String sch = request.getParameter("school");
					String headimg = request.getParameter("imgshow");
					out.println("提交的数据为 ："+
							"<br>用户名：" + (username != null?username:"") +
							"<br>密码" + (password != null?password:"")+
							"<br>性别 " + (sex != null?sex:"")+
							"<br>邮箱： " + (email != null?email:"")+
							"<br>学院：" + (sch != null?sch:"")+
							"<br>头像：" + (headimg != null?headimg+"张":"")
							);
				}else{
					out.print("!!");
				}
			%>
		</span>
		<script>
			function checkpwd(){
				var pwd = document.getElementById("pwd").value.trim();
				var con = document.getElementById("confirm").value.trim();
				if(pwd == con){
					return true;
				}else{
					return false;
				}
			}
			
			function changeimg(){
				var imgindex = document.getElementsByName("imgshow")[0].selectedIndex
				var img_show_id = document.getElementById("img_show")
				img_show_id.src = (imgindex)+".png"
			}
		</script>
	</body>
</html>