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
		location.href="contact/update.do";
		});
	$("#btndelete").click(function(){
		var delconfirm = confirm("삭제하시겠습니까?");
		if(delconfirm){
			alert("삭제되었습니다");
			document.form1.action="contact/delete.do";
			document.form1.submit();
			}
		})
});
</script>


<body>
<h2>연락처</h2>
<form name="form1" method="post">
<table border="1" width="1000">
 <tr>
   <td colspan="4"> 
   <b> 이름 : ${dto.name}</b><br>
   <b> 직급 : ${dto.level}</b><br>
   <b> 회사명 : ${dto.compname}</b><br>
   <b> 이메일 : ${dto.email}</b><br>
   <b> 핸드폰번호 : ${dto.phonenum}</b></td>
 </tr>
 <tr>
 </tr>
</table>

<button type="button" id="btnupdate">수정</button>
<button type="button" id="btndelete">삭제</button>
<button type="button" id="btnlist">목록으로</button>
</form>
</body>
</html>