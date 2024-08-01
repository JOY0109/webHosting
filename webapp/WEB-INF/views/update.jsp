<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/commons.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
   $(function() {
      $('form').on('submit', function() {
    	  if($('[name=name]').val().trim().length == 0){
    		  alert('이름을 입력하세요');
    		  $('[name=name]').focus();
    		  
    		  return false;
    		  
    	  }
    	  
    	  if($('[name=tel]').val() == ''){
    		  alert('전화번호를 입력하세요');
    		  $('[name=tel]').focus();
    		  return false;
    	  }
    	  
    	  return true;
    	  
      });
   });
</script>
</head>
<body>
<form action="/User/Update" method="post">
<table>
	<caption><h1>회원 추가</h1></caption>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" value="${user.id }" readonly /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" value="${user.name }" /></td>
	</tr>
	<tr>
		<td>전화</td>
		<td><input type="text" name="tel" value="${user.tel }" /></td>
	</tr>
</table>
		<input type="submit" value="수정" />
</form>


</body>
</html>