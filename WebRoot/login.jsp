<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<struts:head />
<body>
	<struts:form action="loginPerson">
    	<struts:label value="登录"> </struts:label>
    	<struts:textfield name="account" label="账号"></struts:textfield>
    	<struts:password name="password" label="密码"></struts:password>
    	<struts:submit value="登录"></struts:submit>
    </struts:form>
</body>
</html>