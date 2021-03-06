<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title><dec:title default="Đăng nhập" /></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset='utf-8'>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="<c:url value='/resources/admin/css/styles.css' />" rel="stylesheet" type="text/css" media="all"/>
		<link href="<c:url value='/resources/web/fontawesome-5.15.3/css/all.min.css' />" rel="stylesheet" type="text/css" media="all"/>
		<!-- SDK Facebook -->
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0&appId=390908026024049&autoLogAppEvents=1" nonce="5VtW4E02"></script>
	</head>
	<style>
		#layoutAuthentication_content{
			background-image: url(<c:url value='/resources/web/images/2746E906-F87C-4764-8CE8-E5F1EF18EAA9.jpg' />);
			background-size: cover;
		}
		.trangchu{
			height: 90px;
			width: 90px;
			border-radius: 50%;
			background-color: dimgray;
			opacity: 0.85;
			margin-left: 25px;
		}
		.trangchu i{
			font-size: 40px;
			color: white;
			margin: auto;
			position: relative;
			top: 50%;
			transform: translate(0, -50%);
		}
		.card{
			border-radius: 20px;
		}
		.bgcookie{
			background-color: dimgray;
		}
		
	</style>
	<body id="LoginForm">
		<dec:body/>
	</body>
</html>