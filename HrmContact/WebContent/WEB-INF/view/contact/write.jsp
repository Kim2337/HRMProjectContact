<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>연락처 등록</title>
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


<h2>연락처 등록</h2>
<form name="form1" method="post" action="contact/write.do">

<div>
이름 : <input name="name" id="name" size="30" placeholder="이름을 입력하세요">
</div>
<div>
직급 : <input name="level" id="level" size="30" placeholder="직급을 입력하세요">
</div>
<div>
회사명 : <input name="compname" id="compname" size="30" placeholder="회사명 입력하세요">
</div>
<div>
이메일 : <input name="email" id="email" size="30" placeholder="이메일을 입력하세요">
</div>
<div>
전화번호 : <input name="phonenum" id="phonenum" size="30" placeholder="전화번호를 입력하세요">
</div>
<button type="button" id="btnSave">등록</button> 

</form>


</body>
</html>