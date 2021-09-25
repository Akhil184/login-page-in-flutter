<?php
require('connection.php');
$makeQuery= "SELECT * FROM myAppTable  ";
$stamement=$connection->prepare($makeQuery);
$stamement->execute();
$myarray=array();
while($resultsFrom = $stamement ->fetch()){

array_push(
$myarray,array(
"id"=>$resultsFrom['id'],
"heading"=>$resultsFrom['heading'],
"body"=>$resultsFrom['body']
)
);
}
echo json_encode($myarray);
?>