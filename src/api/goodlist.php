<?php  
	
	include 'connect.php';

	//页数
	$page_no = isset($_GET['page_no']) ? $_GET['page_no'] : 1;

	//一页的商品数量
	$qty = isset($_GET['qty']) ? $_GET(['qty']) : 20;

	//查找所有信息
	$sql = 'select * from productlist';

	//查询数据库
	$result = $conn->query($sql);

	//把从数据库获取到的东西转成关联数组
	$row = $result->fetch_all(MYSQL_ASSOC);

	//根据分页截取数据（设定了20条）
	$res = array(
		'data'=>array_slice($row, ($page_no-1)*$qty,$qty),
		'total'=>count($row),
		'qty'=>$qty
	);

	//转成JSON字符串
	echo json_encode($res,JSON_UNESCAPED_UNICODE);

?>