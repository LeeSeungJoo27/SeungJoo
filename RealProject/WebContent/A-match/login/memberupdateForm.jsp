<%@page import="model.MemberDataBean"%>
<%@page import="dao.MemberDBBeanMysql"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
 <script language="javascript">
   
       function begin(){
         document.deleteform.id.focus();
       }
       function checkIt(){
         if(!document.deleteform.id.value){
           alert("아이디을 입력하지 않으셨습니다.");
           document.deleteform.id.focus();
           return false;
         }
         if(!document.deleteform.password.value){
           alert("비밀번호를 입력하지 않으셨습니다.");
           document.delteform.password.focus();
           return false;
         }
         
       }
  
   </script>




<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body onload = "begin()">



<div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 mt-5 pt-5 ftco-animate mt-5" data-scrollax=" properties: { translateY: '70%' }">
             <div class="modal-body">
      <form method = "post" action = "<%=request.getContextPath()%>/Amatch/memberupdate.do" name ="updateform">
         <table style="width:100%; height:75vh;">
         <tr>   
               <td style="width:35%; padding-left:50px;"><p><b>아이디<span style = "color:#FC0100;">*</span></b></p></td>
               <td style="padding-right:70px;"><input type="text" style="width:100%;" name="id" id="id" value = "<%=id%>" readonly="readonly"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>비밀번호<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password" id="password" value = "${member.password}"></td>
           </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>비밀번호 확인<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password2" id="password2" value = "${member.password }"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>이름<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="name" id="name" value = "${member.name }"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>생년월일<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><select name="year">
            <% for(int i=1920; i<=2019; i++){
               if(i == 1990){%>
                     <option value="<%=i%>" selected="selected"><%=i%></option>
              <%} else {%>
                  <option value="<%=i%>"><%=i%></option>
            <%}
            }%>
            </select>년
            <select name="month">
               <%for(int i=1; i<=12; i++){ %>
                  <option value="<%=i%>"><%=i%></option>
               <%} %>
            </select>월
            <select name="day">
               <%for(int i=1; i<=31; i++){ %>
                  <option value="<%=i%>"><%=i%></option>
               <%} %>
            </select>일
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>성별<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;">
               
                    <input type="radio" name="gender" value="male" checked>남자&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">여자
                 
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>주소</b></p></td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%;" id="sample4_postcode" placeholder="우편번호" name="addr1">&nbsp;
                 <button type="button" class="registerbtn" onclick="sample4_execDaumPostcode()">우편번호검색</button>
              </td>
         </tr>
                  
         <tr>
            <td>
               
            </td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_roadAddress" placeholder="도로명주소" name="addr3">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_jibunAddress" placeholder="지번주소" name="addr2">
               <span id="guide" style="color:#999;display:none"></span>
            </td>
         </tr>
         
         <tr>
            <td></td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_detailAddress" placeholder="상세주소" name="addr1">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_extraAddress" placeholder="참고항목" name="addr4">
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>연락처<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="tel" id="tel" value = "${member.tel }"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>메일<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="mailcode" id="mailcode" value = "${member.mailcode }"></td>
         </tr>
         
         <tr>
            <td colspan="2" style="padding-left:50px;"><input type="checkbox"><b><span style="color:#1354AB;">&nbsp;A-match 이용약관</span>에 전적으로 동의합니다.</b></td>
         </tr>
         <tr>
         <td align="center">
		<input type="submit" value ="등록">
		<input type= "button" data-toggle="modal" href="#deleteModal" value = "회원탈퇴">
		</td>
		</tr>
        </table>
</form>
           
      <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>     
				
          </div>
        </div>
      </div>
    </div>
</body>
</html>