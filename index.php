<?php
require('Templates/head.php');
require('clases/encode.php');

if($_GET)
{
    $encode = new Encode ();
    $encode->decode_get($_SERVER["REQUEST_URI"]);
    $idu=$_GET['idu'];
}


else{
    print"<meta http-equiv='refresh' content='0; url=home.php'>";
}

require('BD/ConexionBD.php');


if($_GET)
{

    $encode->decode_get($_SERVER["REQUEST_URI"]);
    $idu=$_GET['idu'];
    if($idu!='')
    {
        setCookie('id',$idu);
        setCookie('acceso',1);
        session_start();
        $_SESSION['id']=$idu;
        $_SESSION['acceso']=1;
        print"<meta http-equiv='refresh' content='0; url=principal'>";
    }
}

require('Templates/footer.php');
?>