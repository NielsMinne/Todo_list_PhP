<?php
namespace App\Http\Controllers;

use App\Http\Models\Category;
use App\Providers\View;
use Slim\Psr7\Request;
use Slim\Psr7\Response;

class CategoryController {

    public static function index(Request $request, Response $response) {
        $category = $request->getAttribute('category'); //get the category from the request
        $_SESSION['category'] = $category; //store category in session for later routing
        $categories =  Category::get();  // get all categories
        $todos = TodoController::getByCategory($category); //get the todos of the current category
        
        $view = View::display('main.php', [
            'categories' => $categories,
            'todos' => $todos,
        ]);
        
        // return view
        $response->getBody()->write($view);
        return $response;
    }
}
