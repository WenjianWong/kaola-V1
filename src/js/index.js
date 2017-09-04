require(['config'],function(){
	require(['jquery','common'],function(){

	jQuery(function($){

		$('.header').load('./html/header.html .tou');
		$('.footer').load('./html/footer.html footer');

		


		/*轮播图*/
		var carousIdx = 0;
		var timer = setInterval(autoShow,2000);
		function autoShow(){
			carousIdx++;
			if(carousIdx>7){
				carousIdx=-1;	//不能全等于 否则不会跑下一轮
				$("#banner .page span").eq(0).addClass("active").siblings().removeClass("active");
			}
			$("#banner .page span").eq(carousIdx).addClass("active").siblings().removeClass("active");
			$("#banner #showPic li").eq(carousIdx).fadeIn(300).siblings().fadeOut(300);
			
		};
			//鼠标移入暂停播放
			$("#banner").mouseover(function(){
				clearInterval(timer);
			});

			//鼠标移出重新播放
			$("#banner").mouseout(function(){
				timer = setInterval(autoShow,2000);
			});

			$("#banner .page span").mouseenter(function(){
				//清除定时器
				clearInterval(timer);
				//记录当前对象的下标值   改变全局变量carousIdx的值
				carousIdx = $(this).text() - 2;
				autoShow();
		});
			$("#banner .page span").mouseleave(function(){
				
				timer = setInterval(autoShow,1);
				clearInterval(timer);
			});



		/*点击搜索框去除placeholder属性 失去焦点添加*/
		let navSearchInput = $('#topSearchInput');

		navSearchInput.focus(function(){
			navSearchInput.removeAttr("placeholder");
		}).blur(function(){
			navSearchInput.attr("placeholder","红豆薏米粉");
		});

		/*滚动固定顶部搜索栏*/
		$(window).scroll(function(){
			let scroll_top = $(this).scrollTop();
			if(scroll_top>=40){$("#topFixNav").addClass("active")}
				else{$("#topFixNav").removeClass("active")}
		});

		/*左侧楼梯固定*/
         $(window).scroll(function(){	
           let scroll_top = $(this).scrollTop();
           if(scroll_top>=630){$("#leftFloor").addClass("active");}
           		else{$("#leftFloor").removeClass("active");}

           	// let topsearchbox = $("#topsearchbox");
           	// topsearchbox.addClass("abc");
        });

         /*右侧功能固定*/
         $(window).scroll(function(){	
           let scroll_top = $(this).scrollTop();
           if(scroll_top>=630){$("#rightFunction").addClass("active");}
           		else{$("#rightFunction").removeClass("active");}
        });
        
        /*点击返回顶部*/
        $("#returnTop").click(function(){
        	$("body").animate({scrollTop:0},200);
        	return false;
        });

       
  		/*楼梯效果*/
  		$leftFloor = $('#leftFloor .channel');	//今日限时购 今日上新  热门品牌
  		$leftFloorItem = $leftFloor.find('li').slice(0,3);
  		$louceng = $('.allmodules .floors').slice(0,3);

  		$leftFloorItem.on('click',function(e){

  			e.preventDefault();

  			var targetScrollTop;

  			var floorIdx = $(this).index();

  			targetScrollTop = ($louceng.eq(floorIdx).offset().top) - 55;

  			$('body,html').stop().animate({'scrollTop':targetScrollTop},'slow');
  		})


  		$leftFloor2 = $('#leftFloor .floor');	//母婴专区 —— 运动户外
  		$leftFloorItem2 = $leftFloor2.find('li');
  		$louceng2 = $('.allmodules .floors').slice(3);

  		$leftFloorItem2.on('click',function(e){

  			e.preventDefault();

  			var targetScrollTop2;

  			var floorIdx2 = $(this).index();

  			targetScrollTop2 = ($louceng2.eq(floorIdx2).offset().top) - 55;

  			$('body,html').stop().animate({'scrollTop':targetScrollTop2},'slow');
  		});


        });
	});/*require jq结尾*/
});