//注册验证
;
(function() {
	//手机号验证
	var bstop = true;
	$('.phone input').on('blur', function() {
		var $reg = /^1[34578]\d{9}$/;
		var tel = $('.phone input').val();
		if($reg.test(tel)) {
			$.ajax({
				type: 'post',
				url: 'php/reg.php',
				data: {
					tel: tel
				},
				success: function(data) {
					console.log(data);
					if(!data) {
						$('.phone .green').show();
						$('.phone .red').hide();
						bstop = false;
					} else {
						$('.phone .red').text('该用户名已存在').show();
						$('.phone .green').hide();
						bstop = true;
					}
				}
			})
		} else {
			$('.phone .red').text('格式错误').show();
			$('.phone .green').hide();
			bstop = true;
		}
	});

	//密码
	$('.password input').on('input', function() {
        
		var $password = $('.password input').val();
		var $reg1 = /\d+/g;
		var $reg2 = /[a-zA-Z]+/g;
		var $reg3 = /[^a-zA-Z0-9]+/g;
		var $num = 0;
		if($reg1.test($password)) {
			$num++;
		}
		if($reg2.test($password)) {
			$num++;
		}
		if($reg3.test($password)) {
			$num++;
		}
		if($password.length >= 6 && $password.length <= 25) {
			switch($num) {
				case 1:
					$('#si-yz-c1').css({
						'background': '#ee0b39',
					});
					break;
				case 2:
					$('#si-yz-c2').css({
						'background': '#ffdd33',
					});
					break;
				case 3:
					$('#si-yz-c3').css({
						'background': '#009900',
					});
					break;
			}
		}

	});
	$('.password input').on('blur', function() {
		var $password = $('.password input').val();
		if($password.length >= 6 && $password.length <= 25) {
			$('.password .green').show();
			$('.password .red').hide();
			bstop = false;
		} else {
			$('.password .red').show();
			$('.password .green').hide();
			bstop = true;
		}
	});
	//确认密码
	$('.con-password input').on('blur', function() {
		var $password = $('.password input').val();
		var $conpsd = $('.con-password input').val();
		if($conpsd == $password && $conpsd != '') {
			$('.con-password .green').show();
			$('.con-password .red').hide();
			bstop = false;
		} else {
			$('.con-password .red').show();
			$('.con-password .green').hide();
			bstop = true;
		}
	});
	
	$('form').on('submit', function() {
		if(!bstop) {
			return false;
		}
	});
})();