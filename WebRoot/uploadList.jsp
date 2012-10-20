<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	文件保存到:
	<a href="upload/<struts:property value="pictureFileName" />"
		target=_blank><struts:property value="pictureFileName" />
	</a>
	<br/>
	<a href="upload.action">继续</a>	
</body>
</html>