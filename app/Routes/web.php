<?php

use Slim\Factory\AppFactory;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\TodoController;



// slim app factory creation, for eeezeee routing
$app = AppFactory::create();

$app->get('/{category}',CategoryController::class . ":index");

$app->redirect('/', '/default'); //redirect to the default tab

// Seeders to put fake data in database at first run (do not rerun this -> Completed)

// $app->get('/seed/categories', CategorySeeder::class . ":seed");
// $app->get('/seed/todos', TodoSeeder::class, ":seed");

$app->post('/create', TodoController::class . ':createTodo');

$app->get('/delete/{id}', TodoController::class . ':deleteTodo');

$app->get('/is-done/{id}', TodoController::class . ':isDoneTodo');

$app->run();