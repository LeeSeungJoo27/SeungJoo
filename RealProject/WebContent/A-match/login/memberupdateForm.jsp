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
           alert("���̵��� �Է����� �����̽��ϴ�.");
           document.deleteform.id.focus();
           return false;
         }
         if(!document.deleteform.password.value){
           alert("��й�ȣ�� �Է����� �����̽��ϴ�.");
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
               <td style="width:35%; padding-left:50px;"><p><b>���̵�<span style = "color:#FC0100;">*</span></b></p></td>
               <td style="padding-right:70px;"><input type="text" style="width:100%;" name="id" id="id" value = "<%=id%>" readonly="readonly"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>��й�ȣ<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password" id="password" value = "${member.password}"></td>
           </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>��й�ȣ Ȯ��<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="password" style="width:100%;" name="password2" id="password2" value = "${member.password }"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>�̸�<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="name" id="name" value = "${member.name }"></td>
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
               <input type="text" style="width:49%;" id="sample4_postcode" placeholder="�����ȣ" name="addr1">&nbsp;
                 <button type="button" class="registerbtn" onclick="sample4_execDaumPostcode()">�����ȣ�˻�</button>
              </td>
         </tr>
                  
         <tr>
            <td>
               
            </td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_roadAddress" placeholder="���θ��ּ�" name="addr3">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_jibunAddress" placeholder="�����ּ�" name="addr2">
               <span id="guide" style="color:#999;display:none"></span>
            </td>
         </tr>
         
         <tr>
            <td></td>
            <td style="padding-right:70px;">
               <input type="text" style="width:49%; margin:6px 0px 0px 0px;" id="sample4_detailAddress" placeholder="���ּ�" name="addr1">&nbsp;&nbsp;<input type="text" style="width:48.5%; margin:6px 0px 0px 0px;" id="sample4_extraAddress" placeholder="�����׸�" name="addr4">
            </td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>����ó<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="tel" id="tel" value = "${member.tel }"></td>
         </tr>
         
         <tr>
            <td style="width:35%; padding-left:50px;"><p><b>����<span style = "color:#FC0100;">*</span></b></p></td>
            <td style="padding-right:70px;"><input type="text" style="width:100%;" name="mailcode" id="mailcode" value = "${member.mailcode }"></td>
         </tr>
         
         <tr>
            <td colspan="2" style="padding-left:50px;"><input type="checkbox"><b><span style="color:#1354AB;">&nbsp;A-match �̿���</span>�� �������� �����մϴ�.</b></td>
         </tr>
         <tr>
         <td align="center">
		<input type="submit" value ="���">
		<input type= "button" data-toggle="modal" href="#deleteModal" value = "ȸ��Ż��">
		</td>
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
        </div>
      </div>
    </div>
</body>
</html>