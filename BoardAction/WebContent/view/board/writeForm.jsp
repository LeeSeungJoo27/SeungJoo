<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>게시판</title>
</head>

<p class="w3-left"  style="padding-left:30px;">></p>

<div class="w3-center">

<b>글쓰기</b>
<br>
<form method="post" name="writeform" 
action="<%=request.getContextPath() %>/board/write.do" >
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="pageNum" value="${pageNum}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">


<table class="w3-table-all"   style="width:70%">
   <tr>
    <td align="right" colspan="2" >
	    <a href="<%=request.getContextPath() %>/board/list.do?pageNum=${pageNum}"> 글목록</a> 
   </td>
   </tr>
   <tr>
    <td     align="center">이 름</td>
    <td >
       <input type="text" size="10" maxlength="10" name="writer"></td>
  </tr>
  <tr>
    <td     align="center" >제 목
    </td>
    <td >
 <c:if test="${num==0 }">
       <input type="text" size="40" maxlength="50" name="subject">
 </c:if>
 <c:if test="${num>0 }">
    <input type="text" size="40" maxlength="50" name="subject"  value="[답변]">
   </c:if>   </td>
   
  </tr>
  <tr>
    <td    align="center">Email</td>
    <td  >
       <input type="text" size="40" maxlength="30" name="email" ></td>
  </tr>
  <tr>
    <td     align="center" >내 용</td>
    <td  >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <td     align="center" >비밀번호</td>
    <td   >
     <input type="password" size="8" maxlength="12" name="password"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2  align="center"> 
  <input type="submit" value="글쓰기" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" 
  OnClick="window.location='<%=request.getContextPath()%>/board/list.do?pageNum=${pageNum}'">
</td></tr></table>    
     
</form>  </div>  




</body>
</html>      
