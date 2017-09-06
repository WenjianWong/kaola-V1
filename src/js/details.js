require(['config'],function(){
	require(['jquery','common'],function(){
		$('.header').load('./header.html .tou',function(){

			$('.allproduct').css('display','none');

			$('#topCats').mouseover(function(){
				$('.allproduct').css('display','block');
			});
			$('#topCats').mouseout(function(){
				$('.allproduct').css('display','none');
			});
		});
		$('.footer').load('./footer.html footer');

		//生成大图 小图 和右侧的商品信息
		
		//从url截取ID信息
		var parmas = location.search.substring(1); // id=1
		var id = parmas.split('=')[1];

		//根据点击的商品 获取到id后请求对应的数据
		$.ajax({
			data:{data_id:id},
			url:'../api/details.php',
			async:false,
			success:res=>{
				var data = JSON.parse(res);
				$('.container')[0].innerHTML = data.map(function(item){

					//计算折扣
					var discount = ((item.nowPrice / item.oldPrice)*10).toFixed(1);

					return `
							<article class="mainwrap">
								<!-- 商品轨迹 -->
								<div class="goodstrack">
									<div class="wrap">
										<a href="#" class="defaulttr">网易考拉海购</a>
										<span>&nbsp;>&nbsp;</span>
										<i class="currenttrack">${item.productName}</i>
									</div>
								</div>

								<!-- 商品详情 -->
								<div class="goodsinfo">
									<!-- 放大镜 小图框架 -->
									<div class="zoombox">
										<a href="##" class="picprev"><</a>
										<a href="##" class="picnext">></a>
										<div class="littleimg">
											<ul class="littleimgul">
												<li class="littleimgli">
													<a href="#">
														<img src="${item.smallImg1}">
													</a>
												</li>
												<li class="littleimgli">
													<a href="#">
														<img src="${item.smallImg2}">
													</a>
												</li>
												<li class="littleimgli">
													<a href="#">
														<img src="${item.smallImg3}">
													</a>
												</li>
												<li class="littleimgli">
													<a href="#">
														<img src="${item.smallImg4}">
													</a>
												</li>
												<li class="littleimgli">
													<a href="#">
														<img src="${item.smallImg5}">
													</a>
												</li>
												
											</ul>
										</div>

										<!-- 大图 -->
										<div class="imgzoom">
											<img src="${item.middleImg}">
											<b class="shadow"></b>
										</div>

										<!-- 放大镜 -->
										<div class="detailimg">
											<img src="${item.zoomImg}">
										</div>
									</div>

									<!-- 右侧detail -->
									<dl class="product_info" data-id="${item.id}">
										<dt class="country">
											<img src="${item.countryPic}">
											<span>${item.areaOfsource}</span>
											<span class="split">|</span>
											<span class="brand"><a href="##">${item.brand}</a></span>
										</dt>

										<dt class="product_title">
											<span>${item.productName}</span>
										</dt>

										<dt class="product_desc">${item.description}</dt>

										<dd class="product_price">
											<div class="price">
												<span class="shoujia">售价</span>
												<span class="nowprice">${item.nowPrice}.00</span>
												<span class="discount">${discount}折</span>
												<span class="rp">参考价&nbsp;<b>￥${item.oldPrice}</b></span>
											</div>
										</dd>

										<dd class="qty">
											<span class="shuliang">数量</span>
											<div class="qtyform">
												<span class="min">-</span>
												<input type="text" class="qtys" value="1" autocomplete="off"></input>
												<span class="plus">+</span>
											</div>
										</dd>

										<dd class="allbtn">
											<div class="buybtns">
												<a href="##" id="buybtn">立即购买</a>
												<a href="##" id="addcart">加入购物车</a>
											</div>
										</dd>
									</dl>
								</div>
							</article>
					`

				}).join('');
			}
		});

		//放大镜
		var $imgzoom = $('.imgzoom');
		var $shadow = $('.shadow');
		var $detailimg = $('.detailimg');
		var $bigimg = $('.detailimg').children('img');
		var ratio;

		$imgzoom.on('mouseenter',function(){
			$shadow.show();
			$detailimg.show();
			ratio = $detailimg.outerWidth() / $shadow.outerWidth();
				$imgzoom.on('mousemove',function(e){

					var left = e.pageX - $imgzoom.offset().left - $shadow.outerWidth()/2;
					var top = e.pageY - $imgzoom.offset().top - $shadow.outerHeight()/2;

					//限制top left值
					if(left<0){
						left = 0;
					}else if(left>$imgzoom.outerWidth() - $shadow.outerWidth()){
						left = $imgzoom.outerWidth() - $shadow.outerWidth();
					};

					if(top<0){
						top = 0;
					}else if(top>$imgzoom.outerHeight() - $shadow.outerHeight()){
						top = $imgzoom.outerHeight() - $shadow.outerHeight();
					};

					//定位放大镜 阴影 的位置
					$shadow.css({left:left,top:top});

					//定位大图（基于放大镜）的位置
					$bigimg.css({
						left:-left*ratio,
						top:-top*ratio
					})
			})
		}).on('mouseleave',function(){
			$shadow.hide();
			$detailimg.hide();
		});

		/*右侧功能固定*/
         $(window).scroll(function(){	
           let scroll_top = $(this).scrollTop();
           if(scroll_top>=468){$("#rightFunction").addClass("active");}
           		else{$("#rightFunction").removeClass("active");}
        });
        
        /*点击返回顶部*/
        $("#returnTop").click(function(){
        	$("body").animate({scrollTop:0},200);
        	return false;
        });

		//数量加减控制
		var $qtyinput = $('.qtys');
		var $min = $('.min');
		var $plus = $('.plus');

		var $qty = $qtyinput.val();
		
		// 点击-号 递减商品数量
		$min.on('click',function(){

			if($qty <= 1){
				$qty = 1;
				return
			}
			$qty--;
			$qtyinput.val($qty);
		});

		// 点击+号 递减商品数量
		$plus.on('click',function(){

			if($qty >= 99){
				$qty = 99;
				return
			}
			$qty++;
			$qtyinput.val($qty);
		});

		//处理数量输入框
		var reg = /\d/;
		$qtyinput.blur(function(){
			$qtyinput.val($qty);
		})


		//点击 加入购物车
		$('#addcart')
	});
});