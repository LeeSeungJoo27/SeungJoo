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
<c:if test="${x eq 1 }">
   if(x == 1){
<script>
   alert("삭제되었습니다.");
   <% session.invalidate(); %>
   location.href = "<%=request.getContextPath()%>/A-match/main/main.jsp";
</script>

</c:if>
<c:if test="${x ne 1 }">
   <script>
   alert("비밀번호가 일치하지 않습니다.");
   history.go(-1);
   </script>
</c:if>

</body>
</html>