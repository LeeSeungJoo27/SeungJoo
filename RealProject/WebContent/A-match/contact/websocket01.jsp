<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<% String name = request.getParameter("name");
   if (name==null)  name= "무명";%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="euc-kr">
<title>Testing websockets</title>
</head>
<style>
#me {
	position: relative;
	left: 100px;
}

#you {
	position: relative;
	left: 10px;
}
</style>
<body style="padding-top: 150px";>

	<fieldset>
		<div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg'); opacity:0.9;"
			data-stellar-background-ratio="0.5">
			<div class="overlay" style="z-index: -1"></div>
			
				<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true" >
					<div style="margin-top: -200px;">
						<h1 class="mb-12" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">A-match</h1>
						<div >
							<div class="w3-pale-blue" id="messageWindow" style="width: 500px; height: 500px; overflow: auto;"></div>
							<br /> <input id="inputMessage" type="text" /> <input type="submit" value="send" onclick="send()" />
						</div>
					</div>
				</div>
			
		</div>
	</fieldset>
</body>
<script type="text/javascript">
        var textarea = document.getElementById("messageWindow");
        var webSocket = new WebSocket(
    'ws://211.63.89.90:9080<%=request.getContextPath()%>/weball');
        var inputMessage = document.getElementById('inputMessage');
    
    webSocket.onerror = function(event) {     onError(event)   };
    webSocket.onopen = function(event) {     onOpen(event)    };
    webSocket.onmessage = function(event) {   onMessage(event) };
    function onMessage(event) {
    textarea.innerHTML += "<div  id='you'  class='w3-white "
    +"w3-border w3-round-large w3-padding-small' "
    +"style='width:"+(event.data.length*12)+"px;'>"
    +event.data + "</div><br>";
         textarea.scrollTop=textarea.scrollHeight;  }
    function onOpen(event) {
       textarea.innerHTML += "연결 성공<br>";
       webSocket.send("<%=name%>:입장 하였습니다");   }
    function onError(event) {     alert(event.data);   }
    function send() {
        textarea.innerHTML += "<div  class='w3-yellow w3-border "
        +"w3-round-large w3-padding-small' "
        +" id='me' style='width:"
        +((inputMessage.value.length*12)+45)+"px;'>나: " 
        + inputMessage.value 
        + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><br>";
        textarea.scrollTop=textarea.scrollHeight;
        webSocket.send("<%=name%>:"+inputMessage.value);
        inputMessage.value = "";    }  </script>
</html>
