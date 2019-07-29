<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<title>MyProject</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<script>
  window.onload = function() {
 var atag = document.getElementsByTagName("a");
 var url = document.location.href.split("/"); 
 if (url[url.length-2]=="member"){
	 atag[4].className +=" w3-red"; 
 }  else if (url[url.length-2]=="chartjsPro"){
	 atag[5].className +=" w3-red"; 
 }  else if (url[url.length-2]=="awesomePro"){
	 atag[6].className +=" w3-red"; 
 }   else if (url[url.length-2]=="admin"){
	 atag[7].className +=" w3-red"; 
 } 
  else {
	 atag[${boardid}].className +=" w3-red";
 } 
  }
</script>


<div class="w3-container">
<div class="w3-bar w3-green w3-large">
  <a href="<%=request.getContextPath()%>/member/main.do"                  class="w3-bar-item w3-button">HOME</a>
  <a href="<%=request.getContextPath()%>/board/list.do?boardid=1" class="w3-bar-item w3-button">공지사항</a>
  <a href="<%=request.getContextPath()%>/board/list.do?boardid=2" class="w3-bar-item w3-button">자유게시판</a>
  <a href="<%=request.getContextPath()%>/board/list.do?boardid=3" class="w3-bar-item w3-button">Q&A</a>
  <a href="<%=request.getContextPath()%>/member/loginForm.do"    class="w3-bar-item w3-button">회원정보</a>
  <a href="<%=request.getContextPath()%>/chartjsPro/bar_sample.do"    class="w3-bar-item w3-button">BarGraph</a>
  <a href="<%=request.getContextPath()%>/awesomePro/aweSomeCloud.do"    class="w3-bar-item w3-button">WordCloud</a>
<c:if test="${memId eq 'admin'}">
  <a href="<%=request.getContextPath()%>/admin/memberList.do"    
  class="w3-bar-item w3-button">회원List</a>
</c:if>
</div>

</div>
</body>
</html> 

