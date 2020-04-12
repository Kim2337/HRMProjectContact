<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>연락처</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>

$(document).ready(function(){
	$("#btnadd").click(function(){
		location.href="contact/insert.do";
		});
	$("#btngroup").click(function(){
		location.href="contact/glist.do";
		});
});
</script>
</head>
<body>
<button type="button" id="btnadd">연락처등록</button>
<button id="btngroup">그룹관리</button>

<table border="1" width="1000px">
  <tr>
    <th>그룹</th>
    <th>이름</th>
    <th>직급</th>
    <th>회사명</th>
    <th>이메일</th>
    <th>전화번호</th>
   </tr>
 
  
 
    <c:forEach var="contact" items="${list}">
  <tr>
   <td>${contact.gnum}</td>
     <td><a href="contact/view.do?num=${contact.num}">${contact.name}</a></td>
   <td>${contact.level }</td>
    <td>${contact.compname}</td>
    <td>${contact.email}</td>
    <td>${contact.phonenum}</td>
    </c:forEach>
</table>

</body>
</html>