<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>그룹 정보</title>
</head>
<body>
<!-- 그룹에 속한 사람 목록을 띄우고 수정 버튼을 누르면 수정 페이지, 삭제 버튼을 누르면 삭제 페이지 
그런데 삭제를 누르면 그룹에 속한 사람도 다 지워야 하나????
 -->
 
 <h2>연락처</h2>
<form name="form1" method="post">
<table border="1" width="1000">
 <tr>
   <td colspan="4"> 
   <b> 그룹번호 : ${gdto.num}</b><br>
   <b> 그룹이름 : ${gdto.gname}</b><br>
</td>
 </tr>
 <tr>
 </tr>
</table>
 </form>
 
</body>
</html>