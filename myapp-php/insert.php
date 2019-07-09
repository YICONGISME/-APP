<?php
require  "./conn.php";
$data = [];
$data['code'] = isset($_GET['code'])? $_GET['code']:'';
$data['name'] = isset($_GET['name'])? $_GET['name']:'';
$data['model'] = isset($_GET['model']) ? $_GET['model'] :'';
$data['fac_num'] = isset($_GET['fac_num']) ? $_GET['fac_num'] : '';
$data['born_time'] = isset($_GET['fac_num']) ? $_GET['born_time']:'';
$data['position'] = isset($_GET['position']) ? $_GET['position'] : '';
$data['owner'] = isset($_GET['owner']) ? $_GET['owner'] : '';
$data['country'] = isset($_GET['country']) ? $_GET['country'] : '';
$data['factory'] = isset($_GET['factory']) ? $_GET['factory'] : '';
$data['repair_date'] = time();
//var_dump($data);
if(isset($data)){
try{	
	//错误写法
        //$query = "insert into repair(code,name,model,fac_num,position,owner,country,factory) values(code=:code,name=:name,model=:model,fac_num=:fac_num,position=:position,owner=:owner,country=:country,factory=:factory) ";
	$query = "insert into repair(code,name,model,fac_num,born_time,country,factory,position,owner,repair_date) values(:code,:name,:model,:fac_num,:born_time,:country,:factory,:position,:owner,:repair_date)";
        $stmt = $pdo->prepare($query);
        $stmt->bindParam(':code',$data['code']);
        $stmt->bindParam(':name',$data['name']);
        $stmt->bindParam(':model',$data['model']);
        $stmt->bindParam(':fac_num',$data['fac_num']);
        $stmt->bindParam(':born_time',$data['born_time']);
        $stmt->bindParam(':position',$data['position']);
        $stmt->bindParam(':owner',$data['owner']);
        $stmt->bindParam(':country',$data['country']);
        $stmt->bindParam(':factory',$data['factory']);
        $stmt->bindParam(':repair_date',$data['repair_date']);
        $stmt->execute();
	$insert_id = $pdo->lastInsertId();
	
	if(isset($insert_id)){
		
		echo json_encode(array('status'=>1,'msg'=>'success'));	

	}
} catch (PDOException $e) {
	echo $e->getMessage();
}

}
?>
