<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>연락처 수정 </title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>
$(function(){
	$("#save").click(function(){
		confirm("수정하시겠습니까?")
		document.update.submit();
		})
/* 그룹을 선택할 수 있도록 ~! */
	/* $.ajax({
		type:"post", 
		url: "update.do",
		dataType:"json"
		}).done(function(args){
			for(var i=0; i<args.length; i++){
				$("#group").append("<option value='"+args[i].gnum+"'>"+args[i].gname+"</option>");
				}
			}).fail(function(e){
				alert(e.responseText);
				}) */
});

</script>
</head>
<body>
<h2>연락처 수정</h2>
<form name="save" method="post">
<table border="1" width="1000">
 <tr>
   <td colspan="4"> 
   
   <!-- 현재 그룹 목록을 select-option으로 선택할 수 있게...-->   
   <b> 그룹 : 
   <select id="group">
     <option value="">그룹선택</option>
   </select>  </b><br>   
   <input type="hidden" name="num" value="${dto.num}">
   <b> 이름 : <input name="name" value="${dto.name}">${dto.name}</b><br>
   <b> 직급 :<input name="level"></b><br>
   <b> 회사명 : <input name="compname"></b><br>
   <b> 이메일 : <input name="email"></b><br>
   <b> 핸드폰번호 : <input name="phonenum"></b></td>
 </tr>
 <tr>
 </tr>
 </table>
 <button id="svae">수정완료</button>
 </form>
 
</body>
</html>