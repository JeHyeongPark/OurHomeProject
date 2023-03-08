<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/bootstrap.min.css" rel="stylesheet">
<link href="/Zspace/css/asj.css" rel="stylesheet">

<title>::비밀번호 찾기::</title>
</head>  
<body> 
 <div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
 </div>  
         
 <!-- 메인 -->
 <div id="contents"> <!-- 사이드 제외 전체구역 -->
  <div class="main">
    <div class="top">
      <img src="/Zspace/icon/find_pwd.png" id="pwd_find_img" width="45px"> 
      <div id="pwd_find"><font size="4"><b>비밀번호 찾기</b></font><br>
           아이디를 입력해주세요. <p>
      </div>
     <hr>
    </div>
      
    <div class="middle" align="center">
     <form id="pwd_find_fm" method="post" action="pwd_update.jsp">
      <table id="pwd_find_tb">
       <tr align="left" height="50">
        <td colspan="3" id="pwfind" valign="middle"><b>비밀번호 찾기</b></td>
       </tr>
       <tr height="30">
        <td id="pwd" width="140">이름 </td>
        <td colspan="2" width="260"><input type="text" name="mem_name"></td>
       </tr>
       <tr height="50">
        <td id="pwd" width="140">아이디</td>
        <td width="260"><input type="text" name="mem_id"></td>
        <td width="95"><button id="pwd_find_btn">인증하기</button></td>
       </tr>
      </table>
     </form>
    </div> <!-- middle -->    
  </div> <!-- main -->
 </div> <!-- contents -->
   	
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