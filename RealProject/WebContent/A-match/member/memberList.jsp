<%@page import="model.MemberDataBean"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="hero-wrap js-fullheight"
		style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-right justify-content-start"
				 data-scrollax-parent="true">
				<div class="col-md-6 mt-5 pt-5 ftco-animate mt-5"
					data-scrollax=" properties: { translateY: '70%' }">
					<table class="w3-table-all" style = "color:white">
						
						<br>
						<br>
						<c:forEach var="member" items="${li}">
						<tr>
							<td style = "width:70px">&nbsp;${member.id }</td>
							<td style = "width:80px">&nbsp;${member.name }</td>
							<td style = "width:70px">&nbsp;${member.year }</td>
							<td style = "width:70px">&nbsp;${member.gender }</td>
							<td style = "width:70px">&nbsp;${member.addr1 }</td>
							<td style = "width:300px; height:30px" >&nbsp;${member.addr3 }</td>
							<td style = "width:70px">&nbsp;${member.tel }</td>
						</tr>
						</c:forEach>
						
					</table>

				</div>
			</div>
		</div>
	</div>



</body>
</html>