<?php
require('BD/ConexionBD.php');
require('Clases/sesion.php');
$sesion = new Sesion();
echo"<center> <font size='8' color='teal'>Bienvenido</font></center>";
echo"<div class=table-responsive>";
echo"<form name=maestro action='home.php' method=Post enctype=multipart/form-data>";
echo"<center><table class=table table table-bordered'>";
echo"<tr><td align='center'> <font size='4' color='teal'>Usuario:</td></font><td align='center''><input type='text' name='user' id='user'> </input></td>";
echo"<tr><td align='center'><font size='4' color='teal'>Password:</td><td align='center''><input type='password' name='pass' id='pass'> </input></td>";
echo"<tr><td align='center' colspan=2><input type='submit' name=login id=login value='Login'> </input></td>";
echo"</table></center></form></div>";

if(isset($_POST['login'])){
    $sesion->validarDatos($_POST['user'],$_POST['pass']);

}


require('templates/footer.php');
?>