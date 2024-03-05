<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="m" class="sec01.ex02.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="m" />
<jsp:useBean id="addr" class="sec01.ex02.Address"></jsp:useBean>
<jsp:setProperty property="city" name="addr" value="서울" />
<jsp:setProperty property="zipcode" name="addr" value="07654" />
<%
m.setAddr(addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" border="1">

	<tr align="center">
		<td width="7%"><b>아이디</b></td>
		<td width="7%"><b>비밀번호</b></td>
		<td width="5%"><b>이름</b></td>
		<td width="5%"><b>이메일</b></td>
		<td width="5%"><b>도시</b></td>
		<td width="5%"><b>우편번호</b></td>
	</tr>

	<tr align="center">
		<td><%=m.getId()%></td>
		<td><%=m.getPwd()%></td>
		<td><%=m.getName()%></td>
		<td><%=m.getEmail()%></td>
		<td><%=m.getAddr().getCity() %></td>
		<td><%=m.getAddr().getZipcode()%></td>
	</tr>

	<tr align="center">
		<td>${m.id}</td>
		<td>${m.pwd}</td>
		<td>${m.name}</td>
		<td>${m.email}</td>
		<td><%=m.getAddr().getCity()%></td>
		<td><%=m.getAddr().getZipcode()%></td>
	</tr>

	<tr align="center">
		<td>${m.id}</td>
		<td>${m.pwd}</td>
		<td>${m.name}</td>
		<td>${m.email}</td>
		<td>${m.addr.city }</td>
		<td>${m.addr.zipcode }</td>
	</tr>
	</table>

</body>
</html>