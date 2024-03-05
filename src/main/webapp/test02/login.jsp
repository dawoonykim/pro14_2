<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
<form action="result.jsp">
아이디<br>
<input type="text" size=20><br>
비밀번호<br>
<input type="password" size=20><br>
<input type="submit" value="제출"><input type="reset" value="초기화"><br>


<a href="http://localhost:8080/pro14/test01/memberForm.jsp">회원가입하기(http)</a>
<a href= " <%=request.getContextPath() %>/test01/memberForm.jsp">회원가입하기(%)</a>
<a href="${pageContext.request.contextPath }/test01/memberForm.jsp">회원가입하기($)</a>
</form>



</body>
</html>