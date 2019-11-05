<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {

  $container = $app->getContainer();

  $app->get('/cadastro/', function (Request $request, Response $response, array $args) use ($container) {
    // Sample log message
    $container->get('logger')->info("Slim-Skeleton '/' route");

    // Render index view
    return $container->get('renderer')->render($response, 'index2.phtml', $args);
  });

  $app->post('/cadastro/', function (Request $request, Response $response, array $args) use ($container) {
    // Sample log message
    $container->get('logger')->info("Slim-Skeleton '/' route");

    $params = $request->getParsedBody();
    $nome = $params['nome'];
    $email = $params['email'];
    $senha = $params['senha'];
    $imagem = $params['imagem'];
    $conexao = $container->get('pdo');
        
        $resultSet = $conexao->query('SELECT nome FROM clientes WHERE nome = "'. $params['nome'] .'"')->fetchAll();

        $result = $conexao->query('INSERT INTO clientes (nome, email, senha, imagem) 
                                   VALUES ("'. $params['nome'] .'",  "'. $params['email'] .'",   "'.  md5($params['senha']) .'",  "'. $params['imagem'] . '")');
       
       if($_FILES['imagem']['nome'] != null) {
        $imgFileType = explode('/',$_FILES["imagem"]["type"])[1];
       }

       if($_FILES['imagem']['nome'] != null) {
        $imgName = "perfil"."id_cliente" . $imgFileType;
        $target_dir = "store/ssd5/061/11481043/public/img/";
        $target_file = $target_dir . $imgName;
        move_uploaded_file($_FILES["imagem"]["nome"], $target_file);   
        $conexao->query('UPDATE clientes SET imagem = "'.$imgName.'" WHERE id = ' . $resultSet[0]['id_cliente']);
        session_destroy();
    }
       
       return $response->withRedirect('/login/');
       return $container->get('renderer')->render($response, 'index2.phtml', $args);

  });

};
