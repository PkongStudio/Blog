<?php
namespace Admin\Model;
use Think\Model;
class AuthModel extends Model{

	protected $tableName = 'Admin';
	public $error;
 
	public function loginsubmit(){
		if(empty($_POST['username']) || empty($_POST['password'])){
			$this->error = '账号密码不能为空';
			return false;
		}
		$username = addslashes($_POST['username']);
		$password = addslashes($_POST['password']);
		if($auth = $this->checkuser($username, $password)){
			$_SESSION['auth'] = $auth;
			return true;
		}else{
			$this->error = '账号密码错误';
			return false;
		}
	}

	//加密
	public function hash($pw) {
		$salt1 = "#FJ(P5$%JlrX99sjUle4sSAo";
		$salt2 = "lrX99sjU";   
		$res = md5($pw.$salt1);
		$res = md5($salt2.$res);
		return $res; 
	}
	
	public function checkuser($username, $password){
		$adminobj = D('Admin');
		$auth = $adminobj->findOne_by_username($username);
		$password = $this->hash($password);
		if((!empty($auth)) && $auth['password']==$password){
			return $auth;
		}else{
			return false;
		}
	}
	
}