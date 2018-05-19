//引入看了又看图片
;(function($){
	var $goodslist=$('.goods_look_list_box ul');
	var $w='';
	$.ajax({
		type:'get',
		url:'php/xiangqing_look.php',
		dataType:'json',
		success:function(goods){
			console.log(goods)
			$.each(goods, function(index,value){
				$w+=`<li>
				            <a href="#">
				              <img src="${value.src}"/>
				            </a>
				            <span>${value.price}</span>
				        </li>`
			});
			$goodslist.append($w);
		}
	});
})(jQuery);
//引入数据
;(function($){
	var $goodslist=$('.goods_info_top');
	var $new=$('.new_price');
	var $old=$('.cost_price');
	var $xiaoliang=$('.xiaoliang');
	var $pinjia=$('pinjia');
	var $w='';
	var $x='';
	var $y='';
	var $xl='';
	var $pj='';
	$.ajax({
		type:'get',
		url:'php/xiangqing_shuju.php',
		dataType:'json',
		success:function(goods){
			console.log(goods)
			$.each(goods, function(index,value){
				$w += `<h1>${value.goodsname}</h1>
						<strong>${value.type}</strong>`
				$x +=`<strong>${value.oldsale}</strong>`
				$y +=`<strong>
									<b>¥</b>
									${value.newsale}
								</strong>`
				$xl+=`<span>${value.xiaoliang}</span>`
				$pj+=`<span>${value.pinjia}</span>`
			});
			$goodslist.append($w);
			$new.append($y);
			$old.append($x);
			$xiaoliang.append($xl);
			$pinjia.append($pj);
		}
	});
})(jQuery);
//引入商品图片

;(function($){
	var $imglist=$('.img_menu ul li img');
	var $imgm=$('.good_img_big img');
	$.ajax({
		type:'get',
		url:'php/xiangqing.php',
		dataType:'json',
		success:function(data){
			$imgm.attr('src',data[0].msrc);
			$('.good_img_fdj img').attr('src',data[0].bsrc);
			$.each(data, function(index,value){			
				$imglist.eq(index).attr('src',data[index].ssrc);
			});
			$('.img_menu ul li').on('mouseover',function(){
				$imgm.attr('src',data[$(this).index()].msrc);
				$('.good_img_fdj img').attr('src',data[$(this).index()].bsrc);
			})
		}
	});
})(jQuery);
//放大镜
;(function(){
	var $mag=$('.mag');
	var $ware=$('.good_img_big');
	var $bigware=$('.good_img_fdj');
	var $bigimg=$('.good_img_fdj img');
	$ware.on('mouseover',function(ev){
		$mag.show();
		$bigware.show();
		move(ev);
	});
	$ware.on('mouseout',function(){
		$mag.hide();
		$bigware.hide();
	});
	function move(ev){
		var $l=ev.pageX-$ware.offset().left-$mag.width()/2;
		var $t=ev.pageY-$ware.offset().top-$mag.height()/2;
		
		if($l<0){
    		$l=0;
    	}else if($l>=$ware.width()-$mag.width()){
    		$l=$ware.width()-$mag.width();
    	}		
    	if($t<0){
    		$t=0;
    	}else if($t>=$ware.height()-$mag.height()){
    		$t=$ware.height()-$mag.height();
    	}
    	$mag.css({
    		'left':$l,
    		'top':$t
    	});
    	$g=$bigimg.width()/$ware.width();
    	$bigimg.css({
    		'left':-$l*$g,
    		'top':-$t*$g
    	});
	}
})();
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
//商品加减
;(function(){
	var num=$('.text_w').val();
	console.log(num)
	$('.jia').on('click',function(){
		num++;
		$('.text_w').val(num);
	});
	$('.jian').on('click',function(){
		if(num>1){
			num--;
		}else{
			num=1;
		}
		$('.text_w').val(num);
	});
})();
//加入购物车coookie
;(function(){
	var sidarr=[];
	var numarr=[];			
	function getcookievlaue(){
		if(getCookie('cartsid')){
			sidarr=getCookie('cartsid').split(',');
		}
		
		if(getCookie('cartsid')){
			numarr=getCookie('cartnum').split(',');
		}
	}		
	$('.add_now').on('click', function() {
        $('.ok').show()
		var sid = $('.good_img_big img').attr('sid');
		getcookievlaue();
		if($.inArray(sid,sidarr)!=-1){
			var num=parseInt(numarr[$.inArray(sid,sidarr)])+parseInt($('.text_w').val());
			numarr[$.inArray(sid,sidarr)]=num;
			addCookie('cartnum', numarr.toString(), 7);
		}else{
			sidarr.push(sid);
			addCookie('cartsid',sidarr.toString(),7);
			numarr.push($('.text_w').val());
			addCookie('cartnum',numarr.toString(),7);
		}
	});
})();

