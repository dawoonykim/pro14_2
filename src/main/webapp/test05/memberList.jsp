<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
	import="sec02.ex01.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
String command = request.getParameter("command");
MemberDAO dao = new MemberDAO();
if (command != null && command.equals("delMember")) {
	String id = request.getParameter("id");
	dao.delMember(id);
	response.sendRedirect("member_action.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
			<td width="7%"><b>가입일</b></td>
			<td width="7%"><b>삭제</b></td>
		</tr>

		<c:choose>
			<c:when test="${list==null }">
				<tr>
					<td colspan="5"><b>등록된 회원이 없습니다.</b></td>
				</tr>
			</c:when>
			<c:when test="${list!=null }">
				<c:forEach var="mem" items="${list }">
					<tr align="center">
						<td>${mem.id }</td>
						<td>${mem.pwd }</td>
						<td>${mem.name }</td>
						<td>${mem.email }</td>
						<td>${mem.joinDate }</td>
						<td><a href="?command=delMember&id=${mem.id }">삭제</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	
	<a href="memberForm.jsp">회원가입하기</a>
	<a href="member_action.jsp">회원목록보기</a>

</body>
</html>