<?php
	include 'connect.php';

	//接收前端传回的商品id
	$data_id = isset($_GET['data_id']) ? $_GET['data_id'] : 1;

	//查询数据库 表
	$sql = 'select * from productList where id='.$data_id;

	$result = $conn->query($sql);

	//把获取到的信息转成关联数组
	$row = $result->fetch_all(MYSQLI_ASSOC);

	//转换成JSON字符串
	echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>