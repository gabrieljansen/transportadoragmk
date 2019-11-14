<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/rastreio/', function (Request $request, Response $response, array $args) use ($container) {
        
        $container->get('logger')->info("Slim-Skeleton '/' route");

        $conexao = $container->get('pdo');


        $id = $_SESSION['login']['id_cliente'];

        $session = $conexao->query('SELECT * FROM informacoes where id_clientee = ' . $id)->fetchAll();

        $args['informacoes'] = $session;

        
        
        return $container->get('renderer')->render($response, 'index9.phtml', $args);
    });
};