<?php
namespace Admin\Controller;
use Think\Controller;
class AdminController extends Controller {

    public function login(){
    	if($_POST){
    		$this->checklogin();
    	}else{
        	$this->display();
        }
    }

    public function checklogin(){
    	$authobj = D('Auth');
    	if($authobj->loginsubmit()){
    		echo "<script> alert('yes'); </script>";
    	}else{
    		echo "<script> alert('no'); </script>";
    	}
    }

    public function __construct(){
        parent::__construct();
        dump(ACTION_NAME);
        dump((ACTION_NAME!=='login'));
    	if((empty($_SESSION['auth'])) && (ACTION_NAME!=='login')){
    		echo "<script> alert('请先登录'); </script>";
    	}else{
    		echo "<script> alert('welcome'); </script>";

    	}
    }

    function hello(){
    	echo 'haha';
    }

    function logout(){
        $_SESSION['auth'] = null;
    }
}