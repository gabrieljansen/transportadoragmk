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

        $conexao = $container->get('pdo');

        $result = $conexao->query('INSERT INTO clientes (nome, email, senha, cep, cpf, cnpj) 
                                   VALUES ("'. $params['nome'] .'",  "'. $params['email'] .'",   "'.  md5($params['senha']) .'",  "'. $params['cep'] .'",  "'. $params['cpf'] .'",  "'. $params['cnpj'] .'"        )');




       
        return $container->get('renderer')->render($response, 'index6.phtml', $args);
    });

};
