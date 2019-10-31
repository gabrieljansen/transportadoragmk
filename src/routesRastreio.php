<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/rastreio/', function (Request $request, Response $response, array $args) use ($container) {
        // Sample log message
        $container->get('logger')->info("Slim-Skeleton '/' route");
        
        $conexao = $container->get('pdo');
    
        $usuarioNome = $_SESSION['login']['nome'];

        $session = $conexao->query('SELECT * FROM clientes where nome LIKE "%%' . $usuarioNome . '%%"')->fetchAll();

        $args['informacoes'] = $session;

        
$endereco_chegada = 'SELECT endereco_chegada  FROM informacoes';


        $qq = "SELECT endereco_chegada  FROM informacoes";
    
        // Render index view
        return $container->get('renderer')->render($response, 'index9.phtml', $args);
    });
};