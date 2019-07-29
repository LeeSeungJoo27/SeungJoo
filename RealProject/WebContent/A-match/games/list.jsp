<%@page import="model.BoardDataBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body>


	<div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
				<div style="position: absolute; top: 12.5%; background-color: white; padding-top: 15%; height: 100%; width: 100%; left: 0%">
					<center style="position: abolute; top: 10% right: 50%">
						<span class="w3-center w3-large">
							<h3>Game-Matching Board</h3>
						</span>
					</center>

					<c:if test="${count==0}">
						<center style="position: abolute; right: 50%">
							<table class="w3-table-all" width="700" style="border: 2px solid">
								<tr class="w3-grey">
									<td align="center" width="50">����� ���� �����ϴ�.</td>
								</tr>
							</table>
						</center>
					</c:if>

					<c:if test="${count>0}">
						<center style="position: abolute; bottom: 60%; right: 50%">
							<table class="w3-table-all" width="700" style="border: 2px solid">
								<tr style="border: 2px solid" class="w3-grey">
									<td style="border: 2px solid" align="center" width="50" height="40">��ȣ</td>
									<td style="border: 2px solid" align="center" width="250" height="40">����</td>
									<td style="border: 2px solid" align="center" width="100" height="40">�ۼ���</td>
									<td style="border: 2px solid" align="center" width="150" height="40">�ۼ���</td>
									<td style="border: 2px solid" align="center" width="50" height="40">��ȸ</td>
									<td style="border: 2px solid" align="center" width="100" height="40">IP</td>
								</tr>
								<c:forEach var="article" items="${articleList}">
									<tr style="border: 2px solid" height="30">
										<td style="border: 2px solid" align="center" width="50">${number}</td>
										<c:set var="number" value="${number-1 }" />
										<td style="border: 2px solid" align="center" width="250">
										
										<a href="<%=request.getContextPath() %>/board/content.do?num=${article.num}&pageNum=${pageNum}">${article.subject }</td>
										<td style="border: 2px solid" align="center" width="100">${article.writer}</td>
										<td style="border: 2px solid" align="center" width="150">${article.reg_date}</td>
										<td style="border: 2px solid" align="center" width="50">${article.readcount}</td>
										<td style="border: 2px solid" align="center" width="100">${article.ip}</td>
									</tr>
								</c:forEach>
							</table>
						</center>

						<center style="position: abolute; bottom: 5%; right: 50%">

							<c:if test="${startPage>bottomLine}">
								<a href="<%=request.getContextPath() %>/board/game.do?pageNum=${startPage - bottomLine}">[��]</a>
							</c:if>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<a href="<%=request.getContextPath() %>/board/game.do?pageNum=${i }">[${i }]</a>
							</c:forEach>
							<c:if test="${endPage<pageCount}">
								<a href="<%=request.getContextPath() %>/board/game.do?pageNum=${startPage + bottomLine}">[��]</a>
							</c:if>
						</center>
					</c:if>
					<p class="w3-right w3-padding-right-large">
						<a style="position: absolute; right: 34%" data-toggle="modal" href="#boardwriteModal" class="nav-link">�۾��� </a>
					</p>
				</div>

			</div>
		</div>
	</div>

	<!-- boardwrite -->

	<div class="modal fade" id="boardwriteModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<!-- Modal content-->
			<div class="modal-content" style="width: 162%">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">��</button>
				</div>
				<div class="modal-body" align="center">
					<form method="post" action="<%=request.getContextPath()%>/board/boardwrite.do" name="boardwriteform">
						<input type="hidden" name="num" value="${num}"> 
						<input type="hidden" name="pageNum" value="${pageNum}"> 
						<input type="hidden" name="boardid" value="${boardid}"> 
						<input type="hidden" name="ref" value="${ref}"> 
						<input type="hidden" name="re_step" value="${re_step}">
						<input type="hidden" name="re_level" value="${re_level}">
						<table class="w3-table-all w3-center" style="width: 40%">
							<tr>
								<td>�̸�</td>
								<td><input type="text" name="writer" size="10">
							</tr>

							<tr>
								<td>����</td>
								<td><c:if test="${num == null}">
										<input type="text" name="subject" size="50" maxlength="50">
									</c:if> 
									<c:if test="${num != null}">
										<input type="text" name="subject" size="50" maxlength="50" value="[�亯]">
									</c:if></td>
							</tr>

							<td>Email</td>
							<td><input type="text" name="email" size="30" maxlength="30"></td>
							</tr>

							<tr>
								<td>����</td>
								
							<c:if test="${boardid == 1}">
								<td style="width: 80%">

								<textarea rows="10" cols="30" name="content">1. ��¥/����/�ð� :
								 
2. �� ��(��������) :
 
3. �����(�ο�) :
 
4. ������(�����) :
 
5. �츮�� �Ұ�
- �� �� : 
- �� �� �� : 
- �Ƿ�(��,��,��) : 
- ������(��/��) : 
- ��ǥ�� ����ó :
								</textarea></td>
							</c:if>
							<c:if test="${boardid != 1}">
								<td style="width: 80%">
								<textarea rows="10" cols="30" name="content">
								</textarea></td>
							</c:if>
							</tr>

							<tr>
								<td>��й�ȣ</td>
								<td><input type="password" name="password" size="12" maxlength="12"></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="���"> 
								<input type="reset" value="�ٽ��ۼ�"> 
								<input type="button" value="��Ϻ���"></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button id="send" type="button" class="registerbtn" onclick="return login()">�α���</button>
				</div>
			</div>

		</div>
	</div>



</body>
</html>