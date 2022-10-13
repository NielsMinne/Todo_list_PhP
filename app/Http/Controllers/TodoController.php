<?php
namespace App\Http\Controllers;


use App\Http\Models\Category;
use App\Http\Models\Todo;
use App\Providers\View;
use Slim\Psr7\Request;
use Slim\Psr7\Response;

class TodoController {
    
    //get the id of the category
    public static function getID($category){
        $category_id = Category::where('name', 'LIKE', $category)->get('id');
        return $category_id;
    }

    //get the todos by category
    public static function getByCategory($category) {
        $id = self::getID($category);
        
        if($category === "default"){
            $allTodos = Todo::get();
            return $allTodos;
        }
        else{
            $todos = Todo::where('category_id', 'LIKE', $id[0]['id'] )->get();
            return $todos;
        }
    }


    //create a todo 
    public static function createTodo(Request $request, Response $response) {
        $title = $_POST['title']; //get the POST from the form 
        $category = $_SESSION['category']; 
        $category_id = self::getID($category);

        $todo = new Todo(); //make a new todo and store the values
        $todo->title = $title;
        $todo->is_done = 0;
        $todo->category_id = $category_id[0]['id'];
        $todo->save();

        header('location: /' . $category); //redirect to the same page you are on
        die();
    }

    //Set a todo status to is_done
    public static function isDoneTodo(Request $request, Response $response) {
        $id = $request->getAttribute('id');
        $category = $_SESSION['category']; 
        $todo = Todo::find($id);

        $todo->is_done = 1;
        $todo->save();

        header('location: /' . $category); //redirect to the same page you are on
        die();
    }

    //Delete a todo 
    public static function deleteTodo(Request $request, Response $response) {
        $id = $request->getAttribute('id');
        $category = $_SESSION['category']; 
        $todo = Todo::find($id);

        $todo->delete();

        header('location: /' . $category); //redirect to the same page you are on
        die();
    }
}