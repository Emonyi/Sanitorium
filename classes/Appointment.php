<?php  
class Appointment{

private $_db;

	public function __construct($schedule = null){
		$this->_db = Db::getInstance();

	}
	public function create($fields = array()){

		if(!$this->_db->insert('appointment',$fields)){
			throw new Exception("There was a problem creating an account.");
			echo 'inserted';
		}

	}
}

?>