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
		// LoginHandler���� ������ id�� request.getParameter�� �޾Ƽ� session�� ����
		session.setAttribute("memId", request.getParameter("id"));
		response.sendRedirect(request.getContextPath()+"/Amatch/login.do");
	%>
</c:if>

<c:if test = "${check == 0 }">
<script>
alert("��й�ȣ�� ���� �ʽ��ϴ�.");
history.go(-1);
</script>
</c:if>

<c:if test = "${check != 1 && check != 0 }">
<script>
alert("���̵� ���� �ʽ��ϴ�.");
history.go(-1);
</script>
</c:if>

</body>
</html>