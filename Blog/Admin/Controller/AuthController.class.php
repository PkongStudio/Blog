<?php
namespace Admin\Controller;
use Think\Controller;
class AuthController extends AccessController {

    //登录页面
    public function login(){
    	if($_POST){
    		$this->checklogin();
    	}else{
        	$this->display();
        }
    }

    //登录
    public function checklogin(){
    	$authobj = D('Auth');
    	if($authobj->loginsubmit()){
            $arr = array(
                'success' => true, 
                'msg'     => "登陆成功"
                );
            echo json_encode($arr);
    	}else{
            $arr = array(
                'success' => false, 
                'msg'     => $authobj->error
                );
            echo json_encode($arr);
    	}
    }

    //注销
    function logout(){
        $_SESSION['auth'] = null;
        $this->success('跳转中...','login',1);
    }
}