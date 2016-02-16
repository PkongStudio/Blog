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
    		$this->success('登陆成功',U('Admin/index'),1);
    	}else{
    		$this->error('账号或密码错误');
    	}
    }

    //后台访问控制测试
    function hello(){
    	echo '后台访问控制有问题啊';
    }

    //注销
    function logout(){
        $_SESSION['auth'] = null;
        $this->success('跳转中...','login',1);
    }
}