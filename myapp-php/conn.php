<?php
header("Content-Type:text/html; charset=utf-8"); 
//连接数据库
$dbms = 'mysql';//数据库类型
$host = 'IP';//数据库主机名
$dbname = 'myapp';//使用的数据库
$username = 'root';//链接数据库的用户名
$password = 'password'; //密码

$dsn = "$dbms:host=$host;dbname=$dbname";

try{
	//后面的参数 支持长连接
	$pdo = new PDO($dsn,$username,$password,array(PDO::ATTR_PERSISTENT => true));//初始化一个对象
	 // $pdo->exec('set names utf8');//设置编码
	// ****注意错误提示要打开，以便发现是什么错误
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	if($pdo)
	{
		#echo "连接成功";	

	}
}catch(PDOException $e){
	die("Error:".$e->getMessage());
}
 $pdo->query("SET NAMES utf8"); 

?>
