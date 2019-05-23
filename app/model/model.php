<?php

class Model
{
    /**
     * @param object $db A PDO database connection
     */
    public function __construct($db)
    {
        try {
            $this->db = $db;
        } catch (PDOException $e) {
            exit('Database connection could not be established.');
        }
    }

    /**
     * Get all posts from database
     */
    public function getAllPosts()
    {
        $sql = "SELECT * FROM posts";
        $query = $this->db->prepare($sql);
        $query->execute();

        // useful for debugging: you can see the SQL behind above construction by using:
        // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

        return $query->fetchAll();
    }

    /**
     * Add a posts to database
     */
    public function addPost($request)
    {
        $sql = "INSERT INTO posts (artist, track, link) VALUES (:artist, :track, :link)";
        $query = $this->db->prepare($sql);
        $parameters = array(':artist' => $artist, ':track' => $track, ':link' => $link);

        $query->execute($parameters);
    }

    /**
     * Delete a posts in the database
     */
    public function deletePost($id)
    {
        $sql = "DELETE FROM posts WHERE id = :id";
        $query = $this->db->prepare($sql);
        $parameters = array(':id' => $id);

        $query->execute($parameters);
    }

    /**
     * Get a posts from database
     */
    public function getPost($id)
    {
        $sql = "SELECT id, artist, track, link FROM posts WHERE id = :id LIMIT 1";
        $query = $this->db->prepare($sql);
        $parameters = array(':id' => $id);

        $query->execute($parameters);

        return $query->fetch();
    }

    /**
     * Update a posts in database
     */
    public function updatePost($artist, $track, $link, $id)
    {
        $sql = "UPDATE posts SET artist = :artist, track = :track, link = :link WHERE id = :id";
        $query = $this->db->prepare($sql);
        $parameters = array(':artist' => $artist, ':track' => $track, ':link' => $link, ':id' => $id);

        $query->execute($parameters);
    }

    /**
     * Get simple "stats". This is just a simple demo to show
     */
    public function getAmountOfPosts()
    {
        $sql = "SELECT COUNT(id) AS amount_of_postss FROM posts";
        $query = $this->db->prepare($sql);
        $query->execute();

        return $query->fetch()->amount_of_postss;
    }
}
