<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" import="java.util.*,sec02.ex01.*"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("utf-8");
String command=request.getParameter("command");
MemberDAO dao=new MemberDAO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="m" class="sec02.ex01.MemberBean" />
<jsp:setProperty property="*" name="m" />
<%
dao.addMember(m);
List list=dao.listMembers();
request.setAttribute("list", list);
%>
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="memberList.jsp"></jsp:forward>
</body>
</html>