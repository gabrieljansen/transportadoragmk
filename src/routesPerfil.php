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

        $usuarioNome = $_SESSION['login']['id_cliente'];

        $session = $conexao->query('SELECT * FROM clientes where id_cliente LIKE "%%' . $usuarioNome . '%%"')->fetchAll();

        $args['clientes'] = $session;

 

        // Render index view
        return $container->get('renderer')->render($response, 'index8.phtml', $args);
    });
};
