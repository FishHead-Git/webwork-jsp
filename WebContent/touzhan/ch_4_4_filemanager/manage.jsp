<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>操作结果</title>
	<%!
		public static boolean deleteAll(File file){
			if(file == null || file.exists()){
				return true;
			}
			if(file.isFile()){
				return file.delete();
			}
			
			File[] children = file.listFiles();
			
			if( children == null || children.length == 0){
				return file.delete();
			}
			for(File f:children){
				if(!deleteAll(f)){
					return false;
				}
			}
			return file.delete();
			
		}
	%>
  </head>

  <body>
	<%					
		request.setCharacterEncoding("utf-8");
		String msg = "";
		
		String action = request.getParameter("action");
		String realPath = request.getParameter("realPath");
		String nameOld = request.getParameter("nameOld");
		String nameNew = request.getParameter("nameNew");
		
		for(int i=0; i<1; i++){
				
			if(action == null){
				msg = "选择操作作为空， 请重新选择";
				break;
			}
			if(realPath == null || "".equals(realPath.trim())){
				msg = "输入路径为空，请重新输入";
				break;
			}
			if((!"创建目录".equals(action) || !"创建文件".equals(action)) && (nameOld == null || "".equals(nameOld.trim()))){
				msg = "输入的“已有子目录/子文件名”为空，请重新输入";
				break;
			}
			if(("创建目录".equals(action) || "创建文件".equals(action) || "重命名".equals(action))
					&& (nameOld == null || "".equals(nameOld.trim()))){
				msg = "输入的“新的 子目录/子文件名”为空，请重新输入";
				break;
			}
			
			realPath = realPath.trim();
			nameOld = nameOld.trim();
			nameNew = nameNew.trim();
			
			File dir = new File(realPath);
			if(dir == null || dir.isDirectory() == false){
				msg = "输入的父路径"+realPath+"不存在或不是目录";
				break;
			}
			
			File fileOld = new File(realPath, nameOld);
			File fileNew = new File(realPath, nameNew);
			msg = "成功创建3个File对象";
			
			if("创建目录".equals("创建目录")){
				if(fileNew.exists()){
					msg = "创建子目录"+nameNew+"失败，已经存在同名的子目录或子文件";
					break;
				}
				if(fileNew.mkdir()){
					msg = "创建子目录"+nameNew+"成功 ";
				}else{
					msg = "创建子目录"+nameNew+"失败";
				}
				
			}
		}
	%>
    <div style="width:800px; margin:30px auto; line-height:30px;">
		<%=msg %>
		<br><br>
		<a href="javascript:window.history.back();">后退</a>&emsp;&emsp;
		<a href="index.jsp">首页</a>
	</div>
  </body>
</html>
