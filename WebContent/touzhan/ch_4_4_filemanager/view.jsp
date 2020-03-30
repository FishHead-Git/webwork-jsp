<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.File"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>显示</title>
	<style type="text/css">
		.width300		{ width:300px; float:left; }	/*设定宽度，靠左浮动效果*/
		.width170		{ width:170px; float:left; }
		.width130		{ width:80px;  float:left; text-align:right; padding-right:50px; }
		.clear			{ clear:both; }					/*清除浮动效果*/
		.rowHover:hover	{ background-color:#fdd; }		/*鼠标悬停*/
	</style>
  </head>

  <body>
  	<div style="width:800px; margin:30px auto; line-height:30px;">
	  	<%
	  		request.setCharacterEncoding("utf-8");
	  		String folder = request.getParameter("folder");
	  		if(folder == null || folder.trim().equals("")){
	  			response.sendRedirect("index.jsp");
	  			return;
	  		}
	  		folder = folder.trim();
	  		
	  		File  dir = new File(folder);
	  		if(dir == null || dir.exists() == false){
	  			out.println("输入有效的路径");
	  			out.println("<a href='javascript:window.history.back();'>后退</a>");
	  			return;
	  		}
	  		File[] files = dir.listFiles();
	  		if(files == null){
	  			out.println("无法取得子对象");
	  			out.println("<a href='javascript:window.history.back();'>后退</a>");
	  			return;
	  		}
	  		if(folder.substring(folder.length()-1).equals("\\") == false){
	  			folder += "\\";
	  		}
	  		for(int i=0; i<files.length; i++){
	  			out.println(files[i].getName() + "-----" + files[i].lastModified() + "<br>");
	  		}
	  	
	  	%>
	  
	   	路径<%=folder %>下的目录（文件夹）有：
		<br><br>
		<div style="font-weight:bold;">
			<div style="width:300px; float:left;">&emsp;目录名</div>				
			<div style="width:170px; float:left;">&emsp;最后修改时间</div>
			<div style="clear:both;"></div>	<!-- 清除浮动样式 -->
		</div>
		<%
			
			String name = "";
			long size;
			Date date;
			long millisecond;
			String sDate;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String path = "";
			boolean boolHasFile = false;
			
			for(int i=0;i<files.length;i++){
				if(files[i].isDirectory() == false)
					continue;
				
				name = files[i].getName();
				millisecond = files[i].lastModified();
				date = new Date(millisecond);
				sDate = sdf.format(date);
				
				path = folder + name + "\\";
				path = URLEncoder.encode(path, "utf-8");
				path = "?folder=" + path;
			
				boolHasFile = true;
		%>
		<div class="rowHover">
			<div class="width300"><a href="<%=path %>"><%=name %></a></div>
			<div class="width170"><%=sDate %></div>
			<div class="clear"></div>
		</div>
		<%
			}
			if(boolHasFile == false){
				out.println("<div class='rowHover'>(无子目录)</div>");
			}
		%>
		路径<%=folder %>下的文件有:
		<br>
		<br>
		<div style="font-weight:bold;">
			<div class="width300">&emsp;文件名</div>
			<div class="width130">大小</div>
			<div class="width170">&emsp;最后修改时候</div>
			<div class="clear"></div>
		</div>
		<%
			boolHasFile = false;
			boolean canDownload = false;
			String realPath = getServletContext().getRealPath("/");
			out.println(realPath);
			if(folder.indexOf(realPath)>=0){
				realPath = folder.substring(realPath.length());
				realPath = realPath.replace("\\", "/");
				canDownload = true;
			}
			for(int i=0;i<files.length;i++){
				if(files[i].isFile() == false)
					continue;
				
				name = files[i].getName();
				millisecond = files[i].lastModified();
				date = new Date(millisecond);
				sDate = sdf.format(date);
	
				size = files[i].length();
				size = (size + 1023) / 1024;
				
				if(canDownload){
					name = "<a href ='"+realPath+name+"'>"+name+"</a>";
				}
				
				boolHasFile = true;
		%>
		<div class="rowHover">
			<div class="width300"><%=name %></div>
			<div class="width130"><%=size %>KB</div>
			<div class="width170"><%=sDate %></div>
		</div>
		<%
			}
			if(boolHasFile == false){
				out.println("<div class='rowHover'>(无子文件)</div>");
			}
		%>
		<br>
		<a href="javascript:window.history.back();">后退</a>&emsp;&emsp;
		<a href="index.jsp">首页</a>
	</div>
  </body>
</html>
