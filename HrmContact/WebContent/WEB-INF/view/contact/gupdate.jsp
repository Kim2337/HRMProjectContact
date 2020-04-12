<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>그룹 수정</title>

<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>

$(function(){
	$("#gupdate").click(function(){
		confirm("수정하시겠습니까?");
		document.update.submit();
		});
});
</script>


</head>
<body>
<h2>그룹수정</h2>
<form name="update" method="post">
<table border="1" width="1000">
 <tr>
   <td colspan="4"> 
   <input type="hidden" name="gnum" value="${gdto.gnum}">
   <b> 그룹이름 : <input name="gname"></b></td>
 </tr>
 <tr>
 </tr>
 </table>
 
 <button id="gupdate">수정완료</button>
</form>
</body>
</html>