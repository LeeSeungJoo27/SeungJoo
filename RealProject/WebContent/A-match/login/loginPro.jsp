<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body>

<c:if test = "${check == 1}">
	<%
		// LoginHandler에서 보내준 id를 request.getParameter로 받아서 session에 저장
		session.setAttribute("memId", request.getParameter("id"));
		response.sendRedirect(request.getContextPath()+"/Amatch/login.do");
	%>
</c:if>

<c:if test = "${check == 0 }">
<script>
alert("비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
</c:if>

<c:if test = "${check != 1 && check != 0 }">
<script>
alert("아이디가 맞지 않습니다.");
history.go(-1);
</script>
</c:if>

</body>
</html>