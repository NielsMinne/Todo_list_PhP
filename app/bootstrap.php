<?php
// use of namespaces
use Illuminate\Database\Capsule\Manager as Capsule;

session_start();
// define current directory as basepath
define('BASEPATH', __DIR__);

// composer autoloading, to load libs
require BASEPATH . '/../vendor/autoload.php';

// register error handling
$whoops = new Whoops\Run;
$whoops->pushHandler(new Whoops\Handler\PrettyPageHandler);
$whoops->register();

// Connecting .env file
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// database
$capsule = new Capsule;
$capsule->addConnection([
    'driver' => 'mysql',
    'host' => 'localhost',
    'database' => $_ENV['DB_DATABASE'],
    'username' => $_ENV['DB_USERNAME'],
    'password' => $_ENV['DB_PASSWORD'],
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => '',
]);
$capsule->setAsGlobal();
$capsule->bootEloquent();

include BASEPATH . "/Routes/web.php";