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

        $result = $conexao->query('INSERT INTO clientes (nome, email, senha, imagem) 
                                   VALUES ("'. $params['nome'] .'",  "'. $params['email'] .'",   "'.  md5($params['senha']) .'",  "'. $params['imagem'] . '"     )');


        $imgName = "profile".$resultSet[0]['id']."." . explode('/',$_FILES["img"]["type"])[1];
        $target_dir = "public/assets/profileImg/";
        $target_file = $target_dir . $imgName;
        move_uploaded_file($_FILES["img"]["tmp_name"], $target_file);   
        $conexao->query('UPDATE perfil_pessoa SET imagem = "'.$imgName.'" WHERE id = ' . $resultSet[0]['id']);


       
        return $container->get('renderer')->render($response, 'index6.phtml', $args);
    });

};
