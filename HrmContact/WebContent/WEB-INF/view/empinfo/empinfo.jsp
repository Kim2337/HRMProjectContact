<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조직도 </title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>
$(function(){
	$("#dept").click(function(){
		
		var deptno=$("#dept").val();
		var params="deptno="+deptno; //서버로 전송할 값 
		
		$.ajax({
			type:"post"		
			,url:"emplist.do"
			,data:params		
			,dataType:"json" })
			.done(function(args){	
				 var name = "이름 : "+args.name+"<br>";
				 var level = "직급 : "+args.level+"<br>";
				 var phonenum = "전화번호 : "+args.phonenum+"<br>";
				 var email = "이메일 : "+args.email+"<br>";
	 			})
		    .fail(function(e) {
		    	alert(e.responseText);
		    });
		
		});
	
});
</script>

</head>
<body>

<c:forEach items="${deptlist}" var="dept">
  
<button id="dept" name="deptno" value="deptno">${dept.dname}</button>
</c:forEach>
<hr>



</body>
</html>