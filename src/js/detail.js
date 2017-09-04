require(['config'],function(){
	require(['jquery','common','gdszoom'],function(){
		$('.navitm-cats').mouseover(function(){
			$('.allproduct').show();
		}).mouseout(function(){
			$('.allproduct').hide();
		})
		

		$('.imgdetail').gdszoom({
				width:400,height:400,position:'right'
			});

			$('.imgli1 img').mouseover(function(e){
				e.preventDefault();
				$('.imgdetail img').attr({
					'src':this.src,
					'data-guid':this.src
				});
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

         $(window).scroll(function(){
           let scroll_top = $(this).scrollTop();
           if(scroll_top>=790){$(".pronav").css('position','fixed');}
           		else{$(".pronav").css('position','relative');}
        });


        /*ajax懒加载*/
	});/*require jq结尾*/
});