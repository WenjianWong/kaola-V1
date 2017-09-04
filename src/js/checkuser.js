require(['config'],function(){
	require(['jquery'],function($){
		$.ajax({
			url:'../api/usercheck.php',
			dataType:'json',
			success:res=>{
				console.log(res);
			}
		});
		
	});/*require jq结尾*/
});