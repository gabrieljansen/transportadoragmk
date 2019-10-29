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
    $conexao = $container->get('pdo');
        
        $resultSet = $conexao->query('SELECT nome FROM clientes WHERE nome = "'. $params['nome'] .'"')->fetchAll();

        $result = $conexao->query('INSERT INTO clientes (nome, email, senha, imagem) 
                                   VALUES ("'. $params['nome'] .'",  "'. $params['email'] .'",   "'.  md5($params['senha']) .'",  "'. $params['imagem'] . '"     )');
       
       return $container->get('renderer')->render($response, 'index6.phtml', $args);
    
    

    return $response->withRedirect('/login/');
  });

};
