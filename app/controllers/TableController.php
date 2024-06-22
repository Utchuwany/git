<?php
	require_once BASE_PATH . '/app/models/Table.php';
	
	class TableController {
		private $TableModel;

		public function __construct() {
			$this->TableModel = new Table(require BASE_PATH . '/app/config/database.php');
		}
        public function paint(){
           
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $rows = [];
                if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                    $tableName = $_POST['tableName'];
                    $rows = $this->TableModel->paint($tableName);
                }

        }
        require_once BASE_PATH . '/app/views/showTable.php';

    }
    public function update() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $tableName = $_POST['tableName'];
            $id = $_POST['id'];
            $data = $_POST['data'];
            $this->TableModel->updateRow($tableName, $id, $data);
            header("Location: /git/showTable");
            exit;
        }
    }

    public function delete() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $tableName = $_POST['tableName'];
            $id = $_POST['id'];
            $this->TableModel->deleteRow($tableName, $id);
            header("Location: /git/showTable");
            exit;
        }
    }
}
