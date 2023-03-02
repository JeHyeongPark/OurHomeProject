<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/asj.css" rel="stylesheet">
<style>

</style>
<title>::회원 탈퇴 확인::</title>
</head>
<body>
<form name="mem_del" method="post" action="mem_del.jsp">
  <table align="center" id="delcheck_tb">
   <tr id="delcheck_tr">  
    <td colspan="2">
     <h4>탈퇴를 원하시면 비밀번호를 입력해주세요.</h4>
    </td>
   </tr>
   <tr id="delcheck_tr">
    <td>비밀번호</td>
    <td><input type="password" name="pwdch">
   </tr><p><p>
   <tr align="center" id="delcheck_tr">
    <td colspan="2">
      <button id="mem_del" onclick="memdel()">탈퇴하기</button>
      <button id=cancel onclick="close()">취소</button>
    </td>
   </tr>
  </table>
 </form>
</body>
</html>