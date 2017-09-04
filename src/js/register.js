require(['config'],function(){
	require(['jquery'],function($){

		var status = false;

		$('#username').on('blur',function(){
			var _usernane = $(this).val();
			var _reg = /^[0-9a-z\-]{6,18}$/;
				 if(_reg.test(_usernane)){

				 	$.ajax({
						url:'../api/usercheck.php',
						data:{
							username:$('#username').val(),
						},
						success:res=>{
							if(res == 'ok'){
								$(this).css('border-color','green')
							    $('.wrongusr').text("用户名可用").css('color','green');
							    status = true;
							}else if(res == 'fail'){
							    $(this).css('border-color','red')
							    $('.wrongusr').text("用户名已被占用").css('color','red');
							    status = false;
				    		};
						}
					})
				 }else{
				 	$(this).css('border-color','red')
					$('.wrongusr').text("用户名不规范").css('color','red');
					status = false;
				 }
		});

		$('#password').on('blur',function(){
			var _password = $(this).val();
			var _reg = /^[^\s]{6,18}$/;
				 if(_reg.test(_password)){
				 	$(this).css('border-color','green')
				      $('.wrongpsw').text("密码可用").css('color','green');
				      status = true;
				    }else{
				      $(this).css('border-color','red')
				      $('.wrongpsw').text("密码格式不规范").css('color','red');
				      status = false;
				    }
		});

		$('#conPassword').on('blur',function(){
			var _password = $('#password').val();
			var _conpassword = $(this).val();
				 if(_conpassword === _password){
				 	$(this).css('border-color','green')
				      $('.wrongconpsw').text("两次输入的密码一致").css('color','green');
				      status = true;
				    }else{
				      $(this).css('border-color','red')
				      $('.wrongconpsw').text("两次输入的密码不一致").css('color','red');
				      status = false;
				    }
		});

		$('#phoneNum').on('blur',function(){
			var _phoneNum = $(this).val();
			var _reg = /^1[34578]\d{9}$/;
				 if(_reg.test(_phoneNum)){
				 	$(this).css('border-color','green')
				      $('.wrongphone').text("手机号可用").css('color','green');
				      status = true;
				    }else{
				      $(this).css('border-color','red')
				      $('.wrongphone').text("手机号不正确").css('color','red');
				      status = false;
				    }

		});

		$('#registerBtn').on('click',function(){
			console.log(status)
			if(status){
				$.ajax({
				url:'../api/adduser.php',
				data:{
					username:$('#username').val(),
					password:$('#password').val(),
					conpassword:$('#conPassword').val(),
					phonenum:$('#phoneNum').val()
				},
				success:res=>{
					if(res == 'ok'){
						alert('恭喜你注册成功，下面将进入登录页面......');
						location.href = '../html/login.html';
					}
				}
			});
			}
			event.preventDefault();
		});
		
	});
});