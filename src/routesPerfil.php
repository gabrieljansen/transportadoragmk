<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/perfil/', function (Request $request, Response $response, array $args) use ($container) {
        // Sample log message
        $container->get('logger')->info("Slim-Skeleton '/' route");

IMGbancoDeDados
        $conexao = $container->get('pdo');

        $usuarioNomme = $_SESSION['imagem']['login']['nome'];

        $session = $conexao->query('SELECT * FROM clientes where nome LIKE "%%');
        
        
        
        


        $conexao = $container->get('pdo');

        $usuarioNome = $_SESSION['login']['nome'];



        $session = $conexao->query('SELECT * FROM clientes where nome LIKE "%%' . $usuarioNome . '%%"')->fetchAll();

        $args['clientes'] = $session;

        $qry = "SELECT id_cliente, nome FROM clientes";


     
      
       

master
        // Render index view
        return $container->get('renderer')->render($response, 'index8.phtml', $args);
    });
};
