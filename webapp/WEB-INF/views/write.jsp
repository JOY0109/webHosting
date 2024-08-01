<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/commons.css"/>
</head>
<body>
<form action="/User/Write" method="post">
<table>
	<caption><h1>회원 추가</h1></caption>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" /></td>
	</tr>
	<tr>
		<td>전화</td>
		<td><input type="text" name="tel" /></td>
	</tr>
</table>
		<input type="submit" value="확인" />
</form>


</body>
</html>