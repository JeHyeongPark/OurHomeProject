$(function(){
$('#phbtn').click(function(){
  if($('#mem_name').val()=="" || $('#mem_phone').val()==""){
	$('#check').text("이름 또는 전화번호를 입력해 주세요.");
	$('#check').css('color','red');
  }else{
	$('#check').hide();
  }
})
})

$(function(){
$('#embtn').click(function(){
  if($('#mem_name2').val()=="" || $('#mem_email').val()==""){
	$('#check').text("이름 또는 전화번호를 확인해 주세요.");
	$('#check').css('color','red');
  }else{
	$('#check').hide();
  }
})
})