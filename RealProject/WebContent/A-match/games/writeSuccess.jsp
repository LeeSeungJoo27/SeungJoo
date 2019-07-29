<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${boardid ne '1'}">
	<meta http-equiv="Refresh" content ="0;url=<%=request.getContextPath() %>/board/game.do?boardid=2&pageNum=${pageNum}">
</c:if>
<c:if test="${boardid eq '1'}">
	<meta http-equiv="Refresh" content ="0;url=<%=request.getContextPath() %>/board/game.do?boardid=1&pageNum=${pageNum}">
</c:if>
		  <!-- if (id.equals("admin")) { res.sendRedirect("board.jsp?pageNum=" + pageNum); }
		  else 
		  { res.sendRedirect("/RealProject/board/game.do?pageNum=" + pageNum +"&boardId=" + boardid); }
		  -->