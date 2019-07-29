<%@page import="model.BoardDataBean"%>
<%@page import="dao.BoardDBBeanMysql"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>게시판</title>
</head>

<body>
 <div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div style="position: absolute;top: 12.5%;background-color:white; padding-top: 10%; height:100%; width:100%; left:0%">
           <center>
	<table width = "1000" ; border = "1" cellspacing = "0" cellpadding = "0" align = "center">
<tr height = "30">
      <td align = "center" width = "125">글 번호</td>
      <td align = "center" width = "125">
            ${article.num }
      </td>
      <td align = "center" width = "125">조회수</td>
      <td align = "center" width = "125">
            ${article.readcount }
      </td>
</tr>
<tr height = "30">
      <td align = "center" width = "125">작성자</td>
      <td align = "center" width = "125">
            ${article.writer }
      </td>
      <td align = "center" width = "125">작성일</td>
      <td align = "center" width = "125">
            ${article.reg_date }
      </td>
</tr>
<tr height = "30">
      <td align = "center" width = "125">E-mail</td>
      <td align = "center" width = "375" colspan = "3">
            ${article.email }
      </td>
</tr>
<tr height = "30">
      <td align = "center" width = "125">글 제목</td>
      <td align = "center" width = "375" colspan = "3">
            ${article.subject }
      </td>
</tr>
<tr>
      <td align = "center" width = "125">글 내용</td>
      <td align = "left" width = "375" colspan = "3" height = "300">
            <pre>${article.content }</pre>
      </td>
</tr>
<tr height = "30">
      <td colspan = "4" align = "center">
            <input type = "button" value = "글 수정"
            onclick = "document.location.href='<%=request.getContextPath() %>/board/boardupdate.do?num=${article.num }&pageNum=${pageNum }'">
                  &nbsp;&nbsp;&nbsp;&nbsp;
            <input type = "button" value = "글 삭제"
            onclick = "document.location.href='<%=request.getContextPath() %>/board/boarddelete.do?num=${article.num }&pageNum=${pageNum }'">
            >
                  &nbsp;&nbsp;&nbsp;&nbsp;
            <input type = "button" value = "답글쓰기"
            onclick = "document.location.href='<%=request.getContextPath() %>/board/boardwrite.do?num=${article.num }&pageNum=${pageNum }&ref=${article.ref }&re_step=${article.re_step }&re_level=${article.re_level }'">
              &nbsp;&nbsp;&nbsp;&nbsp;
            <input type = "button" value = "목록"
            onclick = "document.location.href='<%=request.getContextPath() %>/board/game.do?num=${article.num }&pageNum=${pageNum }&ref=${article.ref }&re_step=${article.re_step }&re_level=${article.re_level }'">
             <%--      &nbsp;&nbsp;&nbsp;&nbsp; ????????????
                  <!-- 여기서 부터 다시 시작 -->
             <%
             if(id.equals("admin")) {
             %>
            <input type="button" onclick="document.location.href='board.jsp?pageNum=${pageNum}'" value="글목록" style="background-color:#2196F3; color:white; border:0px; margin:5px; border-radius:10px">
            <% } else { %>
            <input type="button" onclick="document.location.href='list.jsp?pageNum=${pageNum}'" value="글목록" style="background-color:#2196F3; color:white; border:0px; margin:5px; border-radius:10px">
            <% } %>
             --%>
      </td>
</tr>
</table>
</center>	
          </div>
        </div>
      </div>
    </div>
 
		


	
		

</body>
</html>