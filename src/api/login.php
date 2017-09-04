<?php  
	
	include 'connect.php';

	//接收前端传回的数据
	$username = isset($_GET['username']) ? $_GET['username'] :'';
	$password = isset($_GET['password']) ? $_GET['password'] :'';

	$password = md5($password);
	
	// 查找所有用户信息
	$sql = "select username,password from user where username = '$username' and password = '$password' "; 

	// 查询数据库
	$result = $conn->query($sql);

	//使用查询结果	
	$row = $result->fetch_row();

	if($row[0]){
		echo 'ok';
	}else{
		echo 'fail';
	};
	
	
	// 释放查询内存(销毁)
	$result->free();

	//关闭连接
	$conn->close();

?>