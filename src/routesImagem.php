<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {

    $container = $app->getContainer();


    include '../php/conexao.php';
    $resultado = mysql_query("SELECT * FROM produtos") or die(mysql_error());
    if($resultado){
	while($row = mysql_fetch_assoc($resultado)){

  ?>
};