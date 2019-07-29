<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html lang="en">

  <head>
  	<%
  	request.setCharacterEncoding("euc-kr");
  	%>
  	
  	<%
// boardid를 가져올 때 사용!
if(request.getParameter("boardid") != null) {
	session.setAttribute("boardid", request.getParameter("boardid")); // Q&A, 회원가입과 같은 상단의 메뉴바들을 boardid라고함
}

String boardid = (String)session.getAttribute("boardid");
if (boardid == null) {boardid = "1";}


	%>

  	
    <title>A-match</title>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/aos.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.timepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/icomoon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">



<script type="text/javascript">
    
   function registerCheck(){
      if(!document.userform.id.value){
         alert("ID를 입력하세요");
         return false;
      }
      if(!document.userform.password.value){
         alert("비밀번호를 입력하세요");
         return false;
      }
      if(document.userform.password.value != document.userform.password2.value){
         alert("비밀번호를 동일하게 입력하세요");
         return false;
      }
      if(!document.userform.name.value){
         alert("이름을 입력하세요");
         return false;
      }
      if(!document.userform.tel.value){
         alert("전화번호를 입력하세요");
         return false;
      }
      if(!document.userform.email.value){
         alert("메일을 입력하세요");
         return false;
      }
     
      document.userform.action = "<%=request.getContextPath()%>/Amatch/register.do";
      document.userform.method = "post";
      document.userform.submit();
      
   }
   
   function login() {
	    document.loginform.action = "<%=request.getContextPath() %>/Amatch/login.do";
		document.loginform.method = "post";
		document.loginform.submit();
	}
   
 <%--   function deletePage() {
	   	document.deleteform.action = "<%=request.getContextPath()%>/Amatch/memberdelete.do";
		document.deleteform.method = "post";
		document.deleteform.submit();
   }
	 --%>
</script>
</head>
  
  
  <body>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="<%=request.getContextPath()%>/Amatch/main.do"><i class="flaticon-helmet"></i><span>A - Match</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="<%=request.getContextPath() %>/Amatch/main.do" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="<%=request.getContextPath() %>/Amatch/about.do" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="<%=request.getContextPath() %>/board/game.do?boardid=1" class="nav-link">Games</a></li>
	          
					<%
						String id = (String) session.getAttribute("memId");

						if (id != null && id.equals("admin")) {
					%>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/Amatch/memberList.do" class="nav-link">회원 정보</a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/Amatch/logout.do" class="nav-link">Logout</a></li>
                    <li class="nav-item"><a href="/Amatch/contact.do" class="nav-link">CONTACT</a></li>
					<li class="nav-item cta"><a href="<%=request.getContextPath()%>/board/game.do?boardid=2" class="nav-link">JOIN GAME (Futsal)</a></li>
					
					<%
						} else if(id != null){
					%>
	            	<li class="nav-item"><a href="<%=request.getContextPath()%>/Amatch/memberupdate.do" class="nav-link">내 정보</a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/Amatch/logout.do" class="nav-link">Logout</a></li>
                    <li class="nav-item"><a href="contact.jsp" class="nav-link">CONTACT</a></li>
					<li class="nav-item cta"><a href="<%=request.getContextPath()%>/Amatch/futsal.do" class="nav-link">JOIN GAME (Futsal)</a></li>
					<%
						} else {
					%>
						<li class="nav-item"><a data-toggle="modal" href="#registerModal" class="nav-link">SIGN UP</a></li>
				        <li class="nav-item"><a href="contact.jsp" class="nav-link">CONTACT</a></li>
						<li class="nav-item cta"><a data-toggle="modal" href="#loginModal" class="nav-link">JOIN GAME (Futsal)</a></li>
					<%
						}
					%>
				</ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->