<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 
    
   <footer class="ftco-footer ftco-section">
      <div class="container-fluid px-md-5">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">A-MATCH</h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
              <ul class="ftco-footer-social list-unstyled mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Services</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Senior Team></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>For Kids</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Reviews</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>FAQs</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">About Us</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Our Story</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Meet the team</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Coach</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Company</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About Us</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Press</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Careers</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
	
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
  <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
  <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/aos.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.animateNumber.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/bootstrap-datepicker.js"></script>
  <script src="<%=request.getContextPath()%>/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<%=request.getContextPath()%>/js/google-map.js"></script>
  <script src="<%=request.getContextPath()%>/js/main.js"></script>

    <!-- Register Modal(sign up) ＃registerModal 회원가입폼-->

<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title" id="myModalLabel">회원가입</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        
      </div>
      
      <div class="modal-body">
      <form method = "post" action = "<%=request.getContextPath() %>/signup/register.do" name ="userform">
         <table style="width:100%; height:75vh;">
         <tr>   
               <td style="width:35%; padding-left:50px;"><p><b>아이디<span style = "color:#FC0100;">*</span></b></p></td>
              <td style="padding-right:70px;"><input type="text" style="width:49%;" name="id" id="id">&nbsp;<button type="button" class="registerbtn">중복확인</button></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>비밀번호<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password" id="password"></td>
           </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>비밀번호 확인<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password2" id="password2"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>이름<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="name" id="name"></td>
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
               <input type="text" style="width:49%;" id="sample4_postcode" placeholder="우편번호" name="mailcode">&nbsp;
                 <button type="button" class="registerbtn" onclick="sample4_execDaumPostcode()">우편번호검색</button>
              </td>
         </tr>
                  
         <tr>
            <td>
               
            </td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_roadAddress" placeholder="도로명주소" name="addr1">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_jibunAddress" placeholder="지번주소" name="addr2">
               <span id="guide" style="color:#999;display:none"></span>
            </td>
         </tr>
         
         <tr>
            <td></td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_detailAddress" placeholder="상세주소" name="addr3">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_extraAddress" placeholder="참고항목" name="addr4">
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>연락처<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="tel" id="tel"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>메일<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="email" id="email"></td>
         </tr>
         
         <tr>
            <td colspan="2" style="padding-left:50px;"><input type="checkbox"><b><span style="color:#1354AB;">&nbsp;A-match 이용약관</span>에 전적으로 동의합니다.</b></td>
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
      <div class="modal-footer">
        <button type="button" class="registerbtn" onclick="return registerCheck()" >회원가입</button>
        
      </div>
    </div>
  </div>
</div>

<!-- login modal 로그인 폼-->
<script>

</script>
  <div class="modal fade" id="loginModal" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body" align="center">
          <form method = "post" action = "/Amatch/login.do" name ="loginform">
             <table>
                <tr>
                   <td width="70">아이디</td>
                   <td><input type="text" name="id" id="id"></td>
                </tr>
            <tr>
               <td colspan="2">&nbsp;</td>
            </tr>
                <tr>
                   <td>비밀번호</td>
                   <td><input type="password" name="password" id="password"></td>
                </tr>
             </table>
          </form>
        </div>
        <div class="modal-footer" >
          <button id = "send" type="button" class="registerbtn"  onclick = "return login()" >로그인</button>
        </div>
      </div>
      
    </div>
  </div>
  
<!-- deleteform 회원탈퇴 확인 -->
	<div class="modal fade" id="deleteModal" role="dialog">
		<div class="modal-dialog modal-sm">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<div class="modal-body" align="center">
					<form method="post" action="<%=request.getContextPath() %>/Amatch/memberdelete.do" name="deleteform">
						<table>
							<tr>
								<td width="70">회원탈퇴</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="password" id="password"></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button id = "delete" type="button" class="deletebtn"  onclick = "return deletePage()" >회원탈퇴</button>
				</div>
			</div>

		</div>
	</div>
	
	
	


	</html>