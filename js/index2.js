//引入轮播图片
;(function($){
	var $imgs=$('.banner_box img');
	$.ajax({
		type:'get',
		url:'php/banner.php',
		dataType:'json',
		success:function(data){
			console.log(data)
			$.each(data, function(index,value){
				$imgs.eq(index).attr('src',data[index].src);
			});
		}
	});
})(jQuery);
//引入每月团购
;(function($){
	var $img=$('.group img');
	var $group=$('.group');
	$.ajax({
		type:'get',
		url:'php/group.php',
		dataType:'json',
		success:function(fiv){
			console.log(fiv)
			$.each(fiv, function(index,value){
				$img.eq(index).attr('src',fiv[index].src);
			});
		}
	});
})(jQuery);
//引入商品图
;(function($){
	var $goodslist=$('.g1');
	var $w='';
	$.ajax({
		type:'get',
		url:'php/goodslist.php',
		dataType:'json',
		success:function(goods){
			console.log(goods)
			$.each(goods, function(index,value){
				$w+=`<li class="goodslist_box_left_box">
				            <a href="details.html">
				              <img src="${value.src}"/>
				            </a>
				        </li>`
			});
			$goodslist.append($w);
		}
	});
})(jQuery);
;(function($){
	var $goodslist=$('.g2');
	var $w='';
	$.ajax({
		type:'get',
		url:'php/goodslist2.php',
		dataType:'json',
		success:function(goods){
			console.log(goods)
			$.each(goods, function(index,value){
				$w+=`<li class="goodslist_box_left_box">
				            <a href="details.html">
				              <img src="${value.src}"/>
				            </a>
				        </li>`
			});
			$goodslist.append($w);
		}
	});
})(jQuery);
;(function($){
	var $goodslist=$('.g3');
	var $w='';
	$.ajax({
		type:'get',
		url:'php/goodslist3.php',
		dataType:'json',
		success:function(goods){
			console.log(goods)
			$.each(goods, function(index,value){
				$w+=`<li class="goodslist_box_left_box">
				            <a href="details.html">
				              <img src="${value.src}"/>
				            </a>
				        </li>`
			});
			$goodslist.append($w);
		}
	});
})(jQuery);	
;(function($){
	var $goodslist=$('.g4');
	var $w='';
	$.ajax({
		type:'get',
		url:'php/goodslist4.php',
		dataType:'json',
		success:function(goods){
			console.log(goods)
			$.each(goods, function(index,value){
				$w+=`<li class="goodslist_box_left_box">
				            <a href="details.html">
				              <img src="${value.src}"/>
				            </a>
				        </li>`
			});
			$goodslist.append($w);
		}
	});
})(jQuery);	
//引入leader图片
;(function($){
	var $bimg=$('.bigpic img');
	var $simg=$('.smallpic img');
	$.ajax({
		type:'get',
		url:'php/leader.php',
		dataType:'json',
		success:function(head){
			console.log(head)
			$.each(head, function(index,value){
				$bimg.eq(index).attr('src',head[index].src);
				$simg.eq(index).attr('src',head[index].smallsrc);
			});
		}
	});
})(jQuery);

//轮播
;(function($){
	var $img=$('.banner_box li img');
	var $btn=$('.banner_btn ul li');
	var $banner=$('.banner_box');
	console.log($btn)
	var $index=0;
	
	$btn.on('mouseover',function(){
		$index=$(this).index('li')-32;
		console.log($index)
		tabswitch();
		console.log($index);
		$(this).addClass('inthis').siblings().removeClass('inthis');
		$('.banner_box li').eq($(this).index()).css('opacity',1)
		$('.banner_box li').eq($(this).index()).siblings().not('.banner_btn').css('opacity',0);
	});
	
	var timer=null;
	timer=setInterval(function(){
		$index++;
		if($index>3){
			$index=0;
		}
		tabswitch();
	},5000);
	$banner.hover(function(){
		clearInterval(timer)
	},function(){
		timer=setInterval(function(){
			$index++;
			if($index>3){
				$index=0;
			}
			tabswitch();
		},5000);
	})
	function tabswitch(){
		$btn.eq($index).addClass('inthis').siblings('li').removeClass('inthis');
		$img.eq($index).addClass('have').siblings('img').removeClass('have');	
		console.log($index)
	}
})(jQuery)
//二级导航
;(function($){
	var $b=$('.allgoods_cate');
	var $s=$('.sd_nav');
	$b.on('mouseover', function() {
		$s.show();
	});
	$b.on('mouseout', function() {
		$s.hide();
	});
})(jQuery);
//登录
;(function(){
	function addCookie(key,value,day){
		var date=new Date();
		date.setDate(date.getDate()+day);
		document.cookie=key+'='+encodeURI(value)+';expires='+date;
	}
	function getCookie(key){
		var str=decodeURI(document.cookie);
		var arr=str.split('; ');
		for(var i=0;i<arr.length;i++){
			var arr1=arr[i].split('=');
	 		if(arr1[0]==key){
				return arr1[1];
			}
		}
	}
	function delCookie(key,value){
		addCookie(key,value,-1);
	}
	var tel=null;
	if(getCookie('tel')){
		tel=getCookie('tel');
		$('.login_a').html(tel);
		$('.reg_a').text('退出');
	};
	$('.reg_a').on('click',function(){
		delCookie('tel',tel);
		$('.login_a').html('登录');
		$('.reg_a').text('退出');
		
	})
})();