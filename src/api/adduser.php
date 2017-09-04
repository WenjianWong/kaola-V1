<?php  
	
	$servername = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'kaola';

	// 连接数据库
	$conn = new mysqli($servername,$username,$password,$database);

	// 设置编码格式
	$conn->set_charset('utf8');

	//接收前端传回的数据
	$username = isset($_GET['username']) ? $_GET['username'] :'';
	$password = isset($_GET['password']) ? $_GET['password'] :'';
	$conpassword = isset($_GET['conpassword']) ? $_GET['conpassword'] :'';
	$phonenum = isset($_GET['phonenum']) ? $_GET['phonenum'] :'';

	//加密密码
	$password = md5($password);
	$conpassword = md5($conpassword);

	// 写入用户信息
	$sql = "insert into user(username,password,conpassword,phonenum) values('$username','$password','$conpassword','$phonenum')";

	// 查询数据库
	$result = $conn->query($sql);

	//使用查询结果	
	if($result){
		echo "ok";
	}


	//关闭连接
	$conn->close();

?>