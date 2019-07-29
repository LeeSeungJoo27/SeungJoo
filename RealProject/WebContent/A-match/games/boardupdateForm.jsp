<%@page import="model.BoardDataBean"%>
<%@page import="dao.BoardDBBeanMysql"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>

<body>
	<div class="hero-wrap js-fullheight"
		style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
				data-scrollax-parent="true">
				<div class="col-md-6 mt-5 pt-5 ftco-animate mt-5"
					data-scrollax=" properties: { translateY: '70%' }">
					<form method="post" name="updateform2" action="<%=request.getContextPath()%>/board/boardupdate.do">
						<input type="hidden" name="num" value="${article.num }">
						<!--  페이지를 넘기기 위해 이 방식을 쓰지 않으면 다시 페이지가 1로 변함 -->
						<input type="hidden" name="pageNum" value="${pageNum }">
						<table class="w3-table-all w3-center" style="width: 40%">
							<b>글수정</b>
							<tr>
								<td colspan="2"><b>글목록</b></td>
							</tr>
							<tr>
								<td>작성자</td>
								<td><input type="text" name="writer" size="10"
									value="${article.writer }">
							</tr>

							<tr>
								<td>제목</td>
								<td><input type="text" name="email" size="50"
									maxlength="50" value="${article.subject }"></td>
							</tr>

							<tr>
								<td>E-mail</td>
								<td><input type="text" name="subject" size="50"
									maxlength="50" value="${article.email }"></td>
							</tr>


							<tr>
								<td>내용</td>
								<td style="width: 80%"><textarea rows="10" cols="30"
										name="content">${article.content }</textarea></td>
							</tr>

							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="password" size="12"
									maxlength="12" value="${article.password}"></td>
							</tr>
							<tr>
								<td colspan="2">
								<input type="submit" value="수정"> 
								<input type="button" value="목록보기" onclick="document.location.href='<%=request.getContextPath() %>/board/game.do?num=${article.num}'">
								<input type="button" value="글삭제" onclick="document.location.href ='<%=request.getContextPath() %>/board/boarddelete.do?num=${article.num}'">
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>