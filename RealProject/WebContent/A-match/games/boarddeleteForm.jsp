<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="euc-kr">
<title>�Խ���</title>
</head>
<body onload="begin()">
	<div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
				<div class="col-md-6 mt-5 pt-5 ftco-animate mt-5" data-scrollax=" properties: { translateY: '70%' }">
					<div classs="w3-center">
						<p class="w3-left" style="": 30px;"></p>
						<div class="w3-container">
							<b>�ۻ���</b><br>
								<form method="post" name="boarddeleteform" action="<%=request.getContextPath()%>/board/boarddelete.do">
								<input type="hidden" name="num" value="${num }"> <input type="hidden" name="pageNum" value="${pageNum }">

								<table class="table=bordered" width="360">
									<tr height="30">
										<td align=center><b>��й�ȣ�� �Է����ּ���.</b></td>
									</tr>
									<tr height="30">
										<td align=center>��й�ȣ : <input type="password" name="password" size="8" maxlength="12"></td>
									</tr>
									<tr height="30">
										<td align=center>
										<input type="submit" value="�ۻ���"> 
										<input type="button" value="�۸��" onclick="document.location.href='<%=request.getContextPath() %>/board/game.do?pageNum=${pageNum }'"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>