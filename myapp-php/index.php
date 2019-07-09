<?php
require './conn.php';
$code = $_GET['code'];
$keywords = $_GET['keywords'];
//$form = $_GET['form'];
//echo json_encode($form);
//echo $code;
//echo $keywords;
if(isset($code)){
	$query = "select * from product where code=:code";
	$stmt = $pdo->prepare($query);
	$stmt->bindParam(':code',$code);
	$stmt->execute();
	#返回关联数组
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	echo json_encode($row,JSON_UNESCAPED_UNICODE);
	
}

if(isset($keywords)){
	$query = "SELECT * FROM product WHERE name LIKE :name";
	$stmt = $pdo->prepare($query);
	#注意 这里 只能是bindValue 才可以
	$stmt->bindValue(':name','%'.$keywords.'%');
	$stmt->execute();
	while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
		$rows[] = $row;
	}
	/*
	if(empty($rows){
		echo json_encode("没有找到结果");
	)*/
	echo json_encode($rows);
}else{
	$query = "SELECT * FROM product";
	$stmt = $pdo->prepare($query);
	$stmt->execute();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $rows[] = $row;
        }
	echo json_encode($rows);
}

?>
