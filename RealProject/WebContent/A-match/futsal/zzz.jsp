<%@page import="model.BoardDataBean"%>
<%@page import="dao.BoardDBBeanMysql"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
   pageEncoding="euc-kr"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script
   src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/script.js?ver=0.1"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
<%
BoardDBBeanMysql dbPro = dbPro.getInstance();
BoardDataBean articleList = new BoardDataBean();
%>
</head>
<body>

   <nav class="w3-sidebar w3-bar-block w3-collapse w3-card" style= "width: 200px" id="mySidebar">
      <div class="w3-container w3-display-container w3-padding-16">
         <i onclick="w3_close()"
            class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
         <h3 class="w3-wide">
            <img src="<%=request.getContextPath()%>/images/Logo2.jpg" width="120" height="120"
               align="middle" onclick="location.href='<%=request.getContextPath()%>/Amatch/main.do'" style="cursor: pointer;">
         </h3>
      </div>
      <div class="w3-padding-64 w3-large w3-text-grey"
         style="font-weight: bold">
         <a href="<%=request.getContextPath()%>/view/product/productlist.jsp" class="w3-bar-item w3-button">남성정장대여</a> 
         <a href="<%=request.getContextPath()%>/view/product/womenSuit.jsp"class="w3-bar-item w3-button">여성정장대여</a>

         <div id="demoAcc"
            class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button w3-light-grey">
            <i class="fa fa-caret-right w3-margin-right"></i>Skinny</a> 
            <a href="#" class="w3-bar-item w3-button">Relaxed</a> 
            <a href="#" class="w3-bar-item w3-button">Bootcut</a> 
            <a href="#" class="w3-bar-item w3-button">Straight</a>
            <a href="<%=request.getContextPath()%>/view/product/belt.jsp" class="w3-bar-item w3-button">belt</a> 
         	<a href="<%=request.getContextPath()%>/view/product/necktie.jsp" class="w3-bar-item w3-button">necktie</a> 
        	 <a href="<%=request.getContextPath()%>/view/product/shoes.jsp" class="w3-bar-item w3-button">Shoes</a>
      </div>
      <a href="#footer" class="w3-bar-item w3-button w3-padding">고객센터</a> 
      <div onclick="document.getElementById('frm').submit();">
      <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" onclick="document.getElementById('newsletter').style.display='block'"   >1대1문의</a>
      </div>
      <a href="<%=request.getContextPath()%>/board/list" class="w3-bar-item w3-button w3-padding">게시판</a>
      
         </div>
         
            </nav>
<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

   <div class="container">
      <div class="row">
         <div class="col-lg-12 my-3">
            <div class="pull-right">
               <div class="btn-group">
                  <button class="btn btn-info" id="list">
                     <span class="fa fa-th"></span>
                  </button>
                  <button class="btn btn-danger" id="grid">
                     <span class="fa fa-th-list   "></span>
                  </button>
               </div>
            </div>
         </div>
      </div>
      
      <div id="products" class="row view-group" align="left">
      <%
         ArrayList<BoardDataBean> list = dbPro.getArticlesByDate(articleDate, boardid);
         
         
         for (BoardDataBean dto : list) {
            %>
         <div class="item col-xs-4 col-lg-4">

            <div class="thumbnail card">

               <div class="img-event">

                  <img src="<%=request.getContextPath()%>/images/product/<%=dto.getImage()%>"
                     width="350" onclick="javascript:productDetail('<%=dto.getNo() %>')" >

               </div>
               <div class="caption card-body">
                  
                  <div class="row">
                     <div class="col-xs-12 col-md-6">
                        <p class="lead">
                        <h4 class="group card-title inner list-group-item-heading">
                     <%=dto.getName()%></h4>
                  <p class="group inner list-group-item-text">
                     재고량:<%=dto.getStock()%>
                  </p>
                           가격:<%=dto.getPrice()%></p>
                           <div class="col-xs-12 col-md-6">
                        <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add
                           to cart</a>
                     </div>
                     </div>
                     
                  </div>
               </div>
            </div>
         </div>

      
   
   <%
         }
      
   %>
   </div>
   </div>
   <form action="productlist2.jsp" name="detailFrm" method="post">
      <input type="hidden" name="no">
   </form>
</body>
</html>