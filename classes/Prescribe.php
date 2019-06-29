<?php  
class Prescribe{

	private $_db;

	public function __construct($prescribe = null){
		$this->_db = Db::getInstance();
	}
	public function getName(){

		$output = "";
		$res = $db->getPDO();
		$sql=$res->prepare("select * from Patient");
		$sql->execute();
		$cnt=1;
		while($row=$sql->fetch(PDO::FETCH_ASSOC)){

			$output .= '<option value=""></option>';
		}
	}
}
?>