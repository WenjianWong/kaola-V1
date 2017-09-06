require(['config'],function(){
	require(['jquery','common'],function($){

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

		

		//请求商品数据 生成结构
		$goodsul = $('.goodsul');
		$pageno = $('.pageno');

		//默认页数
		var pageNo = 1;

		//封装ajax请求
		var requestData = function(pageNo){
			$.ajax({
				data:{page_no:pageNo},	//php接口:变量
				url:'../api/goodlist.php',
				success:res=>{
				var data = JSON.parse(res);

				//生成页码
				if(pageNo === 1){

					$pageno.html('');

					$pages = Math.ceil(data.total/data.qty);

					for(var i=0;i<$pages;i++){
						var $a = $('<a/>');
						$a.text(i+1);
						$pageno.append($a);
					}

					$pageno.find('a').eq(0).addClass('active');
				}

				//生成数据结构
				$goodsul[0].innerHTML = data.data.map(function(item){

				//计算折扣
				var discount = ((item.nowPrice / item.oldPrice)*10).toFixed(1);
		
					return`
						<li class="goodsli" data-id="${item.id}">
							<div class="goodswrap">
								<div class="goodsimg">
									<a href="#" target="_blank">
										<img src="${item.productImg}">
									</a>
								</div>
								<div class="info">
									<p class="nowprice">
										<i>￥</i>
										<span class="price">${item.nowPrice}</span>
										<span class="discount">${discount}折</span><del class="oldprice"><i>￥</i>${item.oldPrice}</del>
									</p>
									<p class="goodsname"><a href="#" target="_blank">${item.productName}</a></p>
									<p class="save">立省${item.oldPrice - item.nowPrice}元</p>
									<p class="commet"><span>评论：${item.commet}</span><b>${item.areaOfsource}</b>
									<p class="distribution">${item.distribution}</p>
								</div>
							</div>
						</li>
					`
				}).join('');
				}
			});
		}


		requestData(pageNo);

		//商品名称展开 样式
		$('.goodsul').on('mouseenter','li',function(){
			$(this).find('a').addClass('active');
		});

		$('.goodsul').on('mouseleave','li',function(){
			$(this).find('a').removeClass('active');
		});

		//点击跳转到下一页 请求下一页数据
		$('.pageno').on('click','a',function(){
			// console.log($(this))  this指向a
			pageNo = $(this).text();
			requestData(pageNo);

			//点击高亮
			for(var i=0;i<$('.pageno').find('a').length;i++){
				$('.pageno').find('a').eq(i).removeClass('active');
			}
			$(this).addClass('active');
		})

		//点击上一页
		$('.prev').on('click',function(){
			pageNo--;

			if (pageNo < 1){
				pageNo =1;
				return			
			}
			requestData(pageNo);
			
			for(var i=0;i<$pages;i++){
				$('.pageno').find('a').eq(i).removeClass('active');
			};
			$('.pageno').find('a').eq(pageNo-1).addClass('active');
			
		})

		//点击下一页
		$('.next').on('click',function(){
			pageNo++;
			
			if (pageNo > $pages) {
				pageNo = $pages;
				return
			}
			requestData(pageNo);

			for(var i=0;i<$pages;i++){
				$('.pageno').find('a').eq(i).removeClass('active');
			};
			$('.pageno').find('a').eq(pageNo-1).addClass('active');
		})

		//点击商品获取id
		$goodsul.on('click','li',function(e){
			e.preventDefault();
			var goodsid = $(this).attr('data-id');
			console.log(goodsid)

			var url = '../html/details.html?id=';

			url = url+goodsid;
			
			//location.href不能新窗口打开 但window.open容易被浏览器屏蔽
			// location.href = url;
			window.open(url,'_blank');

			// $.ajax({
			// 	data:{data_id:goodsid},
			// 	url:'../api/details.php',
			// 	success:res=>{
			// 		var goodsdata = JSON.parse(res);
			// 		console.log(goodsdata)
			// 	}
			// });
		})


	});/*require jq结尾*/
});