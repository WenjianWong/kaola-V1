require(['config'],function(){
	require(['jquery'],function($){ 


		$('#loginBtn').click(function(){


				$.ajax({
				url:'../api/login.php',
				data:{
					username:$('#username').val(),
					password:$('#password').val()
				},
				success:res=>{
					console.log(res)
					if(res == 'ok'){
						$('.wrongmsg').css('display','none');
						location.href = '../index.html';
					}else{
						$('.wrongmsg').css('display','inline-block');
					}
				}

			});

			event.preventDefault();
			
		});

		
		
	});/*require jq结尾*/
});