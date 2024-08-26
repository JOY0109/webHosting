<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(function() {
		
/* 		$("#submit").click(function(){
			alert("test");
			var $mainForm = $("#mainForm");
			$.ajax({
				url:"/insertCalendar"
				,type : "post"
		        ,data: $mainForm.serialize()
		        ,success : function(result){
		        	alert("ok");
		        }
			});
		}) */
		
	});
</script>
</head>
<body>
	<h3>파라미터 전달 테스트</h3>
		<form action="/insertCalendar" method="post" >
			
			<table>
				<tr>
					<td>
						일정명: <input type="text" name="EVENT_NAME">
					</td>
				</tr>
				<tr>
					<td>
						회원번호: <input type="text" name="USER_SEQ" value="20240819001"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" id="submit">
					</td>
				</tr>
			</table>
		</form>
		
		
 	<h2>목록 불러오기 테스트</h2>	
	<c:forEach var="list" items="${ calendarList }">
	 <ul>
	 	<li>일정번호:  ${ list.CALENDER_SEQ }</li>
	 	<li>일정명:  ${ list.EVENT_NAME }</li>
	 </ul>
	</c:forEach>
</body>
</html>