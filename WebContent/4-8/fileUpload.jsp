<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>文件上传结果</title>
  </head>
  
  <body>
    <div style="width:800px; margin:30px auto; line-height:30px;">	
	    <%
	    	String msg = "";	    	
	    	String path = getServletContext().getRealPath("/");
	    	path += "uploadFiles\\";
	    	
	    	for(int i=0; i<1; i++){
	    		File folder = new File(path);
	    		
	    		if(folder.exists() == false){
	    			if(folder.mkdir() == false){
	    				msg = "文件存放的目录创建失败";
	    				break;
	    			}
	    		}
	    		File folderTemp = new File(path + "temp\\");
	    		if(folderTemp.exists() == false){
	    			if(folderTemp.mkdir() == false){
	    				msg = "缓冲目录创建失败";
	    				break;
	    			}
	    		}
	    		
	    		int MEMORY_THRESHOLD = 1024* 1024 * 1;
	    		long MAX_REQUEST_SIZE = 1024* 1024 * 5;
	    		long MAX_FILE_SIZE = 1024* 1024 * 2;
	    		
	    		DiskFileItemFactory factory = new DiskFileItemFactory();
	    		
	    		factory.setSizeThreshold(MEMORY_THRESHOLD);
	    		factory.setRepository(folderTemp);
	    		
	    		ServletFileUpload upload = new ServletFileUpload(factory);
	    		
	    		upload.setSizeMax(MAX_REQUEST_SIZE);
	    		upload.setFileSizeMax(MAX_FILE_SIZE);
	    		upload.setHeaderEncoding("utf-8");
	    		
	    		List<FileItem> fileItemList = null;
	    		
	    		try{
	    			fileItemList = upload.parseRequest(request);	    			
	    		} catch (Exception e){
	    			msg = "没有有效输入";
	    			break;
	    		}

	    		msg = "上传了文件";
	    		
	    		for(FileItem fileItem:fileItemList){
	    			if(fileItem.isFormField()){
	    				String fieldName = fileItem.getFieldName();
	    				
	    				if(fieldName.equals("note") == false && fieldName.equals("note2") == false){
	    					continue;
	    				}
	    				
	    				String note = fileItem.getString("UTF-8").trim();
	    				
	    				if(!"".equals(note)){
	    					msg += "<br>(文件备注: "+note+")";
	    				}
	    				
	    				continue;
	    			}
	    			
	    			String name = fileItem.getName();
	    			
	    			if("".equals(name))
	    				continue;
	    			
	    			int index = name.lastIndexOf("\\");
	    			if(index >= 0){
	    				name = name.substring(index + 1);
	    			}
	    			
	    			long size = fileItem.getSize();
	    			
	    			size = (size + 1023) / 1024;
	    			
	    			String url = "uploadFiles/" + name;
	    			msg += "<br><a href='"+url+"'>"+name+"</a> ("+size+"KB)";
	    			
	    			fileItem.write(new File(path, name));
	    		}
	    		
	    	}
	    	
			msg += "<br><br>文件上传到了目录：<br>" + path;
	    %>
	    <h3>文件上传结果</h3>
	    <%= msg %>
	    <br><br><a href="index.jsp">再次上传文件</a>
    </div>
  </body>
</html>
