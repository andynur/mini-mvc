<?php

class Posts extends Controller {

    public function index()
    {
        $posts = $this->model->getAllPosts();
        $amount_of_posts = $this->model->getAmountOfPosts();

        $this->view('posts/index.php', [
            'posts' => $posts,           
            'amount' => $amount_of_posts           
        ]);
    }

    public function add()
    {
        if ( isset($_POST) ) {
            $this->model->addPost($_POST);
        }

        header('location: ' . URL . 'posts/create');
    }

    public function edit($id)
    {
        if ( isset($id) ) {
            $post = $this->model->getPost($id);
            
            $this->view('posts/edit.php', ['post' => $post]);
        } else {
            header('location: ' . URL . 'posts/index');
        }
    }
    
    public function update()
    {
        if ( isset($_POST) ) {
            $this->model->updatePost($_POST);
        }

        header('location: ' . URL . 'posts/index');
    }

    public function delete($id)
    {
        if ( isset($id) ) {
            $this->model->deletePost($id);
        }

        header('location: ' . URL . 'posts/index');
    }

}