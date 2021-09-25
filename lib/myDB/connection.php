<?php
try{
$connection=new PDO('mysql:host=localhost,dbname=id17649379_flutter','id17649379_flutteru','bbb');
$connection ->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
echo "yes connected";
}catch(PDOException $exc){
echo $exc ->getMessage();
die("nn");
}
?>