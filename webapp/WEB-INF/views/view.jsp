<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/commons.css"/>
<style>

</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
/*    $(function() {
      $('a').on('click', function(e) {
    	  e.preventDefault();    // a tag 기본이벤트 link 이동기능 X
    	  e.stopPropagation();
    	  
    	  var a = e.target;  // click 한 a tag
    	  console.dir(a);
    	  var href = a.href;
    	  switch( a.id ) {
    	  case 'linkUpdateForm': 	  
    	  case 'linkDelete': 	  
    	  	  href = href + '?id=' + ${ user.id } ;
    	  	  break;
    	  case 'linkWriteForm': 	  
    	  case 'linkList':
    		  href = href ;
    	  	  break;
    	  }
    	  //alert(href);
    	  location.href = href ;
    	  
      });
   }); */
</script>
</head>
<body>   
   <table>
   <caption><h1>내용 보기</h1></caption>
   <tr>
     <td>번호</td>
     <td> ${ user.id }</td>
   </tr> 
   <tr>
     <td>이름</td>
     <td> ${ user.name }</td>
   </tr> 
   <tr>
     <td>전화</td>
     <td> ${ user.tel }</td>
   </tr> 
   <tr>
     <td colspan="2">
       <a href="/User/WriteForm"  id="linkWriteForm">회원가입</a>
       <a href="/User/UpdateForm" id="linkUpdateForm">회원수정</a>
       <a href="/User/Delete"     id="linkDelete">회원삭제</a>
       <a href="/User/List"       id="linkList">회원목록</a>
     </td>
   </tr> 
   </table>
</body>
</html>












