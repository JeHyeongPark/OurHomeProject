<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<head> 
 <meta charset="UTF-8">
<script type="text/javascript" src="join.js?ver=1"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/bootstrap.min.css" rel="stylesheet">
<link href="/Zspace/css/asj.css" rel="stylesheet">
<script> 
$(function(){
  $('#email_sel').change(function(){
	$("#email_sel option:selected").each(function(){
	  if($(this).val()=='1'){
		 $('#email2').val('');
	     $('#email2').attr("disabled",false); //#email2 활성화
	  }else{
		 $('#email2').val($(this).text()); //선택값 입력
		 $('#email2').attr("disabled",true); //#email2 비활성화
	  }
	})    
  }) 
 })  
 /* 여기부터 기능 구현 시 수정 예정*/
  $(function(){
    $('#phbtn').click(function(){
	  alert('전화번호로 찾기 준비 중');
    })
  })
  $(function(){
    $('#embtn').click(function(){
	  alert('이메일로 찾기 준비 중');
    })
  }) 
  /* 여기까지 기능 구현 시 수정예정 */
  
</script>
</head>
<body>
 <div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
 </div>  
 <div id="contents"> <!-- 사이드 제외 전체구역 -->
  <div class="main">  
   <div class="top">
     <img src="/Zspace/icon/find_id.png" id="id_find_img" width="50px"> 
     <div id="id_find"><font size="4"><b>아이디 찾기</b></font><br>
            아이디를 찾기 위한 방법을 선택해 주세요. <p>
     </div>
    <hr>
   </div>
      
   <div class="middle" align="center">
     <form method="post" id="idfm" action="#">
       <table id="findtb">
         <tr align="left" height="40">
           <td colspan="3" id="find_phone_td" valign="middle">
             <input type="radio" name="find"> <b>전화번호로 찾기</b>
           </td>
         </tr>
         <tr height="20">
           <td id="id1">이름</td>
           <td width="160"><input type="text" name="mem_name" size="21px"></td>
           <td width="100"><button id="phbtn">인증하기</button></td>
         </tr>
         <tr height="40">
           <td id="id1">휴대전화</td>
           <td colspan="2" width="160"><input type="text" name="mem_phone" size="21px"></td>
         </tr>
       </table>
       
       <!-- 이메일로 찾기-->
       <table id="findtb2">
         <tr align="left" height="40">
           <td colspan="3" id="find_email_td" valign="middle">
             <input type="radio" name="find"> <b>이메일로 찾기</b>
           </td>
         </tr>
         <tr height="20">
           <td id="id1">이름</td>
           <td width="160"><input type="text" name="mem_name" size="21px"></td>
           <td width="100"><button id="embtn">인증하기</button></td>
         </tr>
         <tr height="40">
           <td id="id1">이메일</td>
           <td colspan="2">
             <input type="text" name="mem_email" id="mem_email"size="13"> @
             <input type="text" name="mem_email2" id="email2" size="13">
             <select name="mem_email_sel" id="email_sel">
               <option value="" selected>선택하세요</option>
               <option value="1">직접 입력</option>
               <option value="daum.net">daum.net</option>
               <option value="google.com">google.com</option>
               <option value="naver.com">naver.com</option>
               <option value="nate.com">nate.com</option>
               <option value="empas.com">empas.com</option>
             </select>
           </td>
         </tr>
       </table>
     </form>
   </div><!-- middle -->
  </div> <!-- 메인 -->
 </div><!-- content -->   

  <!-- footer -->
   <footer >
      <div class="footer" ><!--   -->
         상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구<p>
            사업자번호 xxx-xx-xxxxx<p>
             이메일 | 교환,반품 주소지<p>
         
      </div>
   </footer>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="/Zspace/js/bootstrap.min.js"></script>

</body>
</html>