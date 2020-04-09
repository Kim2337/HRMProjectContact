<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>그룹 관리</title>

<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>

$(document).ready(function(){
	$("#gadd").click(function(){
		location.href="contact/gwrite.do";
		});
	$("#gupdate").click(function(){
		location.href="contact/gupdate.do";
		});
});
</script>


</head>
<body>
<h2>그룹관리</h2>
<!-- 그룹 관리 페이지에서 그룹 수정, 삭제, 추가 -->
<button id="gadd">그룹추가</button>
<button id="gupdate">그룹수정</button>

<table border="1" width="300px">
  <tr>
    <th>그룹이름</th>
  </tr>
  <c:forEach var="cgroup" items="${glist}">
  <tr>
  <td><a href="contact/gview.do?gnum=${cgroup.gnum}">${cgroup.gname}</a></td>
  </tr>
   </c:forEach>
</table>
</body>
</html>