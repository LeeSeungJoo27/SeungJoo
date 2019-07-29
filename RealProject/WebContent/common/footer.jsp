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

    <!-- Register Modal(sign up) ��registerModal ȸ��������-->

<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title" id="myModalLabel">ȸ������</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        
      </div>
      
      <div class="modal-body">
      <form method = "post" action = "<%=request.getContextPath() %>/signup/register.do" name ="userform">
         <table style="width:100%; height:75vh;">
         <tr>   
               <td style="width:35%; padding-left:50px;"><p><b>���̵�<span style = "color:#FC0100;">*</span></b></p></td>
              <td style="padding-right:70px;"><input type="text" style="width:49%;" name="id" id="id">&nbsp;<button type="button" class="registerbtn">�ߺ�Ȯ��</button></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>��й�ȣ<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password" id="password"></td>
           </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>��й�ȣ Ȯ��<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password2" id="password2"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>�̸�<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="name" id="name"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>�������<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><select name="year">
            <% for(int i=1920; i<=2019; i++){
               if(i == 1990){%>
                     <option value="<%=i%>" selected="selected"><%=i%></option>
              <%} else {%>
                  <option value="<%=i%>"><%=i%></option>
            <%}
            }%>
            </select>��
            <select name="month">
               <%for(int i=1; i<=12; i++){ %>
                  <option value="<%=i%>"><%=i%></option>
               <%} %>
            </select>��
            <select name="day">
               <%for(int i=1; i<=31; i++){ %>
                  <option value="<%=i%>"><%=i%></option>
               <%} %>
            </select>��
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>����<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;">
               
                    <input type="radio" name="gender" value="male" checked>����&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">����
                 
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>�ּ�</b></p></td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%;" id="sample4_postcode" placeholder="�����ȣ" name="mailcode">&nbsp;
                 <button type="button" class="registerbtn" onclick="sample4_execDaumPostcode()">�����ȣ�˻�</button>
              </td>
         </tr>
                  
         <tr>
            <td>
               
            </td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_roadAddress" placeholder="���θ��ּ�" name="addr1">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_jibunAddress" placeholder="�����ּ�" name="addr2">
               <span id="guide" style="color:#999;display:none"></span>
            </td>
         </tr>
         
         <tr>
            <td></td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_detailAddress" placeholder="���ּ�" name="addr3">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_extraAddress" placeholder="�����׸�" name="addr4">
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>����ó<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="tel" id="tel"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>����<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="email" id="email"></td>
         </tr>
         
         <tr>
            <td colspan="2" style="padding-left:50px;"><input type="checkbox"><b><span style="color:#1354AB;">&nbsp;A-match �̿���</span>�� �������� �����մϴ�.</b></td>
         </tr>
         
        </table>
</form>
           
      <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var roadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���� �׸� ����

                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
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
        <button type="button" class="registerbtn" onclick="return registerCheck()" >ȸ������</button>
        
      </div>
    </div>
  </div>
</div>

<!-- login modal �α��� ��-->
<script>

</script>
  <div class="modal fade" id="loginModal" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">��</button>
        </div>
        <div class="modal-body" align="center">
          <form method = "post" action = "/Amatch/login.do" name ="loginform">
             <table>
                <tr>
                   <td width="70">���̵�</td>
                   <td><input type="text" name="id" id="id"></td>
                </tr>
            <tr>
               <td colspan="2">&nbsp;</td>
            </tr>
                <tr>
                   <td>��й�ȣ</td>
                   <td><input type="password" name="password" id="password"></td>
                </tr>
             </table>
          </form>
        </div>
        <div class="modal-footer" >
          <button id = "send" type="button" class="registerbtn"  onclick = "return login()" >�α���</button>
        </div>
      </div>
      
    </div>
  </div>
  
<!-- deleteform ȸ��Ż�� Ȯ�� -->
	<div class="modal fade" id="deleteModal" role="dialog">
		<div class="modal-dialog modal-sm">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">��</button>
				</div>
				<div class="modal-body" align="center">
					<form method="post" action="<%=request.getContextPath() %>/Amatch/memberdelete.do" name="deleteform">
						<table>
							<tr>
								<td width="70">ȸ��Ż��</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>��й�ȣ</td>
								<td><input type="password" name="password" id="password"></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button id = "delete" type="button" class="deletebtn"  onclick = "return deletePage()" >ȸ��Ż��</button>
				</div>
			</div>

		</div>
	</div>
	
	
	


	</html>