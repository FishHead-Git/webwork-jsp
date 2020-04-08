<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>选择文件</title>
  </head>
  
  <body>
    <div style="width:800px; margin:30px auto; line-height:30px;">
	    <form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
			<h3>文件上传：</h3>
			<p>
				文件1： <input type="file" name="file" style="width: 300px;">
				备注1：<input type="text" name="note" style="width:10em;">
			</p>
			<p>
				文件2： <input type="file" name="file2" style="width: 300px;">
				备注2：<input type="text" name="note2" style="width:10em;">
			</p>
			<p>
				&emsp;&emsp;&emsp;&emsp;
				<input type="submit" value="提交" name="submit">
			</p>
		</form>
	</div>
  </body>
</html>
