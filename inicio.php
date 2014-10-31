<?php
$idu=$_COOKIE['id'];
$acceso=$_COOKIE['acceso'];
if($idu=="" or $acceso=="")
{
    print"<meta http-equiv='refresh' content='0; url=index.php'>";
}
session_start();
$idu2=$_SESSION['id'];
$acceso2=$_SESSION['acceso'];
if($idu2=="" or $acceso2=="")
{
    print"<meta http-equiv='refresh' content='0; url=index.php'>";
}require('BD/ConexionBD.php');
$sql="SELECT * FROM usuarios WHERE id=$idu";
$consulta=mysql_query($sql)or die ("Error $sql");
$nombre=mysql_result($consulta,0,'nombre');
$app=mysql_result($consulta,0,'apellidop');
$apm=mysql_result($consulta,0,'apellidom');

require('helpers.php');
if(empty($_GET['url']))
    $_GET['url']='principal';

controller($_GET['url']);
require('Templates/footer.php');
?>