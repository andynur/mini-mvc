<?php

class Home extends Controller {
  
    public function index()
    {
        $this->view('home/index.php', [
            'hello' => 'Welcome'
        ]);
    }

    public function exampleOne()
    {
        $this->view('home/example_one.php');
    }

    public function exampleTwo()
    {
        $this->view('home/example_two.php');
    }

}
