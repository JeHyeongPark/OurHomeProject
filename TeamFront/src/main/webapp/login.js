$(function(){
$('#logbtn').click(function(){
  if($('#mem_id').val()=="" || $('#mem_pwd').val()==""){
	$('#check').text("아이디와 비밀번호를 확인해 주세요.");
	$('#check').css('color','red');
  }else{
	$('#check').hide();
  }
})
})