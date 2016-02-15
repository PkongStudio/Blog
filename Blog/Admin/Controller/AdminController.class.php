<?php
namespace Admin\Controller;
use Think\Controller;
class AdminController extends Controller {

    public function __construct() {
        parent::__construct();
        if((empty($_SESSION['auth'])) && (ACTION_NAME!=='login')){
            $this->error('请先登录',U('Admin/login'),3);
        }
    }

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
    		$this->success('登陆成功','index',1);
    	}else{
    		$this->error('账号或密码错误');
    	}
    }


    function hello(){
    	echo 'haha';
    }

    function logout(){
        $_SESSION['auth'] = null;
        $this->success('跳转中...','login',1);
    }

    function edit(){
        $this->display();
    }

    function index(){
        $this->display();
    }
    function postNew(){
        $test = M('article');
        $data['content'] = $_POST['content'];
        $data['title'] = $_POST['title'];
        $data['summary'] = $_POST['summary'];
        $test->add($data);
    }
    
}