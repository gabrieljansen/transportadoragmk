<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/rastreio/', function (Request $request, Response $response, array $args) use ($container) {
        
        $container->get('logger')->info("Slim-Skeleton '/' route");

        $conexao = $container->get('pdo');


        $usuarioNome = $_SESSION['login']['endereco_chegada'];

        $session = $conexao->query('SELECT * FROM informacoes where id_produto LIKE "%%' . $usuarioNome . '%%"')->fetchAll();

        $args['informacoes'] = $session;

        $qry = "SELECT id_produto, endereco_saida, endereco_chegada FROM informacoes";

        
        return $container->get('renderer')->render($response, 'index9.phtml', $args);
    });
};