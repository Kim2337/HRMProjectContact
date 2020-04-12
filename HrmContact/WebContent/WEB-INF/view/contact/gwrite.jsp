<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>그룹 추가</title>


<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>

$(document).ready(function(){
	$("#btnSave").click(function(){
		confirm("등록하시겠습니까?");
		document.form1.submit();
		});
});
</script>

</head>
<body>

<h2>그룹 추가</h2>
<form name="form1" method="post" action='<c:url value='contact/gwrite.do'/>'>
<div>
그룹이름 : <input name="gname" id="gname" size="30" placeholder="그룹이름을 입력하세요">
</div>
<button id="btnSave">등록</button> 

</form>
</body>
</html>