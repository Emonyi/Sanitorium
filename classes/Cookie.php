<?php

class 	Cookie{
	//check whether cookie do exist
	public static function exists($name){

		return (isset($_COOKIE[$name]))? true : false;
	}
	//get the value of the cookie
	public static function get($name){

		return ($_COOKIE[$name]);
	}
	//create a cookie
	public static function put($name,$value,$expiry){
		//the expiry time needs to be appended to the current time
		if(setcookie($name,$value,time() + $expiry,'/')){
			return true;
		}
		return false;
	}
	//delete the cookie by resetting it with a negative value
	public static function delete($name){
		self::put($name,'',time() - 1);
	}
}
?>