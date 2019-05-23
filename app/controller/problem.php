<?php

class Problem extends Controller {

    public function index()
    {
        $this->view('_errors/404.php');
    }
    
}