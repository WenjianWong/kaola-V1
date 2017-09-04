<?php  
	
	include 'connect.php';

	$username = isset($_GET['username']) ? $_GET['username'] :'';


	// 查找所有用户信息
	$sql = "select username from user where username = '$username' "; 

	// 查询数据库
	$result = $conn->query($sql);

	//使用查询结果	
	$row = $result->fetch_row();

	if($result->num_rows>0){
		echo "fail";
	}else{
		echo "ok";
	}
	

	//关闭连接
	$conn->close();

?>