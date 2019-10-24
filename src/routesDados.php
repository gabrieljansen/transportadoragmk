<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/dados/', function (Request $request, Response $response, array $args) use ($container) {
        // Sample log message
        $container->get('logger')->info("Slim-Skeleton '/' route");

        // Render index view
        return $container->get('renderer')->render($response, 'index6.phtml', $args);
    });

$app->post('/dados/', function (Request $request, Response $response, array $args) use ($container) {
    // Sample log message
    $container->get('logger')->info("Slim-Skeleton '/' route");

    $params = $request->getParsedBody();

    $conexao = $container->get('pdo');

    $result = $conexao->query('INSERT INTO informacoes ( endereco_saida, endereco_chegada, data) 
                               VALUES ( "'. $params['endereco_saida'] .'", "'. $params['endereco_chegada'] .'", "'. $params['data'] .'"         )');

    //echo "<pre>";
    //print_r($result);
    //exit;

    // Render index view
    return $container->get('renderer')->render($response, 'index8.phtml', $args);
});

};

