;(function($){
	var $img=$('.login_main_left img');
	$.ajax({
		type:'get',
		url:'php/loginimg.php',
		dataType:'json',
		success:function(data){
			console.log(data)
			$.each(data, function(index,value){
				$img.eq(index).attr('src',data[index].src);
			});
		}
	});
})(jQuery);
//登录验证
;(function(){
	function addCookie(key,value,day){
		var date=new Date();
		date.setDate(date.getDate()+day);
		document.cookie=key+'='+encodeURI(value)+';expires='+date;
	}
	$('.pass input').on('blur',function(){
		var $password=$('.pass input').val();
		if($password.length>=6&&$password.length<=25){
            $('.er').hide();
		}
		else{
              $('.er').show();
		}	
	});
	$('.submit').on('click',function(){
		var $tel=$('#tel').val();
		var $password=$('#pwd').val();
		$.ajax({
			type:'post',
			url:'php/login.php',
			data:{
				tel:$tel,
				password:$password
			},
			success:function(data){
				if(!data){
					console.log(data)
					alert('登录失败');
					location.href='login.html';
				}else{
					addCookie('tel',$tel,7);
					location.href='index.html';
				}
			}
		})
	});
	
})();