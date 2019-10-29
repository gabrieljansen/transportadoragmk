<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {

    $container = $app->getContainer();

    $app->get('/perfil/', function (Request $request, Response $response, array $args) use ($container) {
      // Sample log message
      $container->get('logger')->info("Slim-Skeleton '/' route");

      $conexao = $container->get('pdo');
      
      

      $idCliente = $_GET['id_cliente'];
      $sql = "SELECT imagem FROM clientes WHERE id_cliente = $idCliente";
  
  

      // Render index view
      return $container->get('renderer')->render($response, 'index2.phtml', $args);
    });

}
  ?>
