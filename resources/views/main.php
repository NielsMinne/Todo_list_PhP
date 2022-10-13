<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400&family=Roboto:wght@300&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="/css/main.css">
    <script src="https://kit.fontawesome.com/a0204138b3.js" crossorigin="anonymous"></script>
    <title>ToDo Application - Niels Minne </title>
</head>

<body>
    <?php @include('partials/header.php') ?>
    <main>
        <nav>
            <h3>Categories</h3>
            <hr>
            <?php
            
                foreach ($data['categories'] as $category) 
                {
                    @include 'partials/categories.php';    
                }
            ?>
        </nav>
        <section>
            <?php @include 'partials/inputField.php' ?>
            <h2>Unfinished Business!</h2>
            <?php 
            foreach ($data['todos'] as $todo) {
                if($todo->is_done === 0)
                @include 'partials/todos/activeTodo.php'; 
            }
            ?>
            <h2>You done did that!</h2>
            <?php 
            foreach ($data['todos'] as $todo) {
                if($todo->is_done === 1)
                @include 'partials/todos/completedTodo.php'; 
            }
          ?>
        </section>
    </main>
</body>

</html>