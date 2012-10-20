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
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/jquery.uploadify-3.1.js"></script>
<script type="text/javascript" src="js/publish.js"></script>

<link rel="stylesheet" type="text/css" href="css/uploadify.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>

<form action="sample_posteddata.php" method="post">
	<p>
		<span class="label">标题:</span>
		<input id="title" name="title" type="text" class="title" />
	</p>
	<p>
		<span class="label">部门:</span><select></select>
		<span class="label">活动:</span><select></select>
	</p>
	<label for="editor"></label>
	<textarea cols="80" id="editor" name="editor" rows="10"></textarea>




<div class="buttons">
<input id="upload" name="upload" type="file" />
<button id="upload_btn" class="positive" >
	<img src="img/apply.png" />立即上传</button>
<button id="clear_btn" class="negative" >
	<img src="img/cross.png" />清空队列</button>
</div>

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
	<div class="buttons">
			<button id="clear_btn" class="positive" >
				<img src="img/apply.png" />发布！</button>
			<button id="cancel_btn" class="negative" >
				<img src="img/cross.png" />取消! </button>
	</div>
</form>

</body>
</html>