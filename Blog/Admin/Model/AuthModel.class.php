<?php
namespace Admin\Model;
use Think\Model;
class AuthModel extends Model{

	public function loginsubmit(){
		if(empty($_POST['username']) || empty($_POST['password'])){
			return false;
		}
		$username = addslashes($_POST['username']);
		$password = addslashes($_POST['password']);
		if($auth = $this->checkuser($username, $password)){
			$_SESSION['auth'] = $auth;
			return true;
		}else{
			return false;
		}
	}
	
	public function checkuser($username, $password){
		$adminobj = D('Admin');
		$auth = $adminobj->findOne_by_username($username);
		if((!empty($auth)) && $auth['password']==$password){
			return $auth;
		}else{
			return false;
		}
	}
}