<?php

namespace App\Seeders;

use App\Http\Models\Todo;
use Faker\Factory as Faker;

class TodoSeeder {

    private static $amountOfRecords = 20;

     public static function seed(){
        
        $todos = [];
       for($i = 0;$i < self::$amountOfRecords;$i++)
       {
           $randomTodo = self::generate();


           //Instantiate new entity
           $todoEntity= new Todo();
           //Describe entity
           $todoEntity->title = $randomTodo;
           $todoEntity->save();
           $todos[] = $todoEntity;
       }

        dd($todos);
     }

     private static function generate(){
        $faker = Faker::create();
        return $faker->words(5,true);
     }

     
}