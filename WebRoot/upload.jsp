<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts"  %>
<struts:actionerror />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="js/jquery.uploadify-3.1.js"></script>
<script type="text/javascript" src="js/upload.js"></script>

<link rel="stylesheet" type="text/css" href="css/uploadify.css" />
</head>
<body>
<input id="upload" name="upload" type="file" />  
<p>
<input id="upload_btn" type="button" value="立即上传"/>
<input id="clear_btn" type="button" value="清空队列"/>
</p> 
<table id="file_list" border="1">
<caption>已上传文件</caption>
<tr>
  <th>文件名</th>
  <th>大小</th>
  <th>类型</th>
  <th>创建时间</th>
  <th>最后修改</th>
</tr>
</table>
</body>
</html>