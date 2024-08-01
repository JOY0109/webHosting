<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  ul { 
     border:1px solid black;
     border-radius :20px;
     width :400px; float:left;
     margin : 20px;  padding: 20px;     
  }
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
   $(function() {

   });
</script>
</head>
<body>
    <a href="/User/WriteForm">회원추가</a> 
    <h1>목록</h1>
   
   <c:forEach var="user" items="${ list }">
     <ul>
       <li>번호 : ${ user.id }</li>
       <li>이름 : <a href="/User/View?id=${ user.id }">${ user.name }</a></li>
     </ul>
    </c:forEach>
</body>
</html>














