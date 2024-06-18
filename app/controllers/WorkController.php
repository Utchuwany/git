<?php
require_once BASE_PATH . '/app/models/WorkRegister.php';

class WorkController{
    private $workModel;
    public function __construct(){
        $this->workModel = new Work(require BASE_PATH . '/app/config/database.php');
    }
    public function addDay(){
        $errors = [];
        $data =[];

        if ($_SERVER['REQUEST_METHOD']==='POST'){

            $data['calendar'] = htmlspecialchars(trim($_POST['calendar']));
            $data['year'] = substr($data['calendar'],0,4);
            $data['month'] = substr($data['calendar'],5,2);
            $data['day'] = substr($data['calendar'],-2);				
            $data['id_worker'] = htmlspecialchars(trim($_POST['id_worker']));
            $data['hours'] = htmlspecialchars(trim($_POST['hours']));
            $data['comment_user'] = "";
            $data['comment_superviser'] = htmlspecialchars(trim($_POST['comment_superviser']));
            $data['comment_admin'] = "";
       
            if (empty($errors)){
                $this->workModel->addDay($data['calendar'],$data['year'],$data['month'],
                $data['day'],$data['id_worker'],$data['hours'],$data['comment_user'],
                $data['comment_superviser'],$data['comment_admin']);
            }
            else{
                print_r($errors);
            }

        }
        require_once BASE_PATH . '/app/views/addDay.php';
    }
}
