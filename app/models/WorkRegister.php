<?php
//session_start();

class Work{
    private $db;
    public function __construct($dbConfig) {
        try {
            $this->db = new mysqli($dbConfig['host'], $dbConfig['username'], $dbConfig['password'], $dbConfig['db_name']);
        } catch(Exception $e) {
            die("Błędne połączenie z bazą danych: " . $e->getMessage());
        }
    }
    public function addDay($calendar, $year, $month, $day, $id_worker,$hours, $comment_user, $comment_superviser, $comment_admin) {
        $stmt = $this->db->prepare("INSERT INTO work (calendar, year, month, day, id_worker, hours, comment_user, comment_superviser, comment_admin) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("siiiiisss", $calendar, $year, $month, $day, $id_worker, $hours,$comment_user, $comment_superviser, $comment_admin);
        $result = $stmt->execute();
        $stmt->close();
        return $result;
        //przekierowanie do jakiejs strony do dodania
    }
}