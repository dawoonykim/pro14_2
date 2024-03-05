<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="m" class="sec01.ex01.MemberBean"></jsp:useBean>
    <jsp:setProperty property="*" name="m"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
<table>
<tr align="center">
<td><%=m.getId() %></td>
<td><%=m.getPwd() %></td>
<td><%=m.getName() %></td>
<td><%=m.getEmail() %></td>
</tr>

<tr align="center">
<td><%=m %></td>

</tr>
</table>
</body>
</html>