<%@page import="model.BoardDataBean"%>
<%@page import="dao.BoardDBBeanMysql"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
   pageEncoding="euc-kr"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='resources/packages/core/main.css' rel='stylesheet' />
<link href='resources/packages/daygrid/main.css' rel='stylesheet' />
<script src='resources/packages/core/main.js'></script>
<script src='resources/packages/interaction/main.js'></script>
<script src='resources/packages/daygrid/main.js'></script>

<script>
	
  document.addEventListener('DOMContentLoaded', function() {
    
  });
</script>
<style>

  body {
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

</style>
</head>
<body>
	<div>
		date : ${date }
		<img src="<%=request.getContextPath()%>/images/22007340_1338620179597247_5708845382487715250_n.jpg"
                     width="70%"; height="70%">
		
		<br>
	</div>
	
 
		


	
</body>
</html>
