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
   alert("�����Ǿ����ϴ�.");
   <% session.invalidate(); %>
   location.href = "<%=request.getContextPath()%>/A-match/main/main.jsp";
</script>

</c:if>
<c:if test="${x ne 1 }">
   <script>
   alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
   history.go(-1);
   </script>
</c:if>

</body>
</html>