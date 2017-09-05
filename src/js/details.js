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

		
		
	});
});