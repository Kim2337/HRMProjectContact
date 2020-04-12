<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html>
<head>
<title>연락처</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>

</head>


<script>

$(document).ready(function(){
	$("#btnlist").click(function(){
		location.href="contact/list.do";
		});
	$("#btnupdate").click(function(){
		location.href='contact/contact/update.do?num='+num;
		});
	$("#btndelete").click(function(){
		form.attr("method", "get")
		form.attr("action", "")

		var delconfirm = confirm("삭제하시겠습니까?");
		if(delconfirm){
			alert("삭제되었습니다");
			location.href='contact/delete.do?num='+num;
			document.form1.submit();
			}
		})
});
</script>


<body>
<h2>연락처</h2>
<form name="form" method="post">
<table border="1" width="1000">

 <tr>
   <td colspan="4"> 
   <b> 이름 : ${dto.name}</b><br>
   <b> 그룹 :  </b><br>
   <b> 직급 : ${dto.level}</b><br>
   <b> 회사명 : ${dto.compname}</b><br>
   <b> 이메일 : ${dto.email}</b><br>
   <b> 핸드폰번호 : ${dto.phonenum}</b></td>
 </tr>
 <tr>
 </tr>

</table>

<a href='<c:url value='contact/update.do?num=${dto.num }'/>' >수정</a>
<a href='<c:url value='contact/delete.do?num=${dto.num }'/>' >삭제 </a>

</form>
</body>
</html>