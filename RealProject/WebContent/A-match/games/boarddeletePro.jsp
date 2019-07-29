<%@page import="dao.BoardDBBeanMysql"%>
<%@page import="model.BoardDataBean"%>
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
<c:if test="${ check == 1 }">
<meta http-equiv="Refresh" content="0;=<%=request.getContextPath() %>/board/game.do?pageNum=${pageNum }" > 
</c:if>
<c:if test="${ check != 1 }">
	<script language="JavaScript">
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);
	</script>
</c:if>
</body>
</html>