<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/servicos/[{sucesso}]', function (Request $request, Response $response, array $args) use ($container) {
        // Sample log message
        $container->get('logger')->info("Slim-Skeleton '/servicos/' route");

        // Render index view
        return $container->get('renderer')->render($response, 'index5.phtml', $args);
    });

    $app->post('/servicos/', function (Request $request, Response $response, array $args) use ($container) {
        // Sample log message
        $container->get('logger')->info("Slim-Skeleton '/servicos/' route");

        $conexao = $container->get('pdo');

        $params = $request->getParsedBody();

        $resultSet = $conexao->query('SELECT * FROM localizador
                                      WHERE cidade = "' . $params['cidade'] . '" 
                                            AND data = "' . ($params['data']) . '"')->fetchAll();


        if (count($resultSet) == 1) {
            $_SESSION['servicos']['ehlocalizado'] = true;
            $_SESSION['servicos']['cidade'] = $resultSet['cidade'];
            
            return $response->withRedirect('/servicos/true');
           
        } else {
            $_SESSION['servicos']['ehLocalizado'] = false;

            return $response->withRedirect('/servicos/fail');
        }

        // Render index view
        return $container->get('renderer')->render($response, 'index5.phtml', $args);
    });
};
