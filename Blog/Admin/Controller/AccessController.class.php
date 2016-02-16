<?php
namespace Admin\Controller;
use Think\Controller;

class AccessController extends controller {
	//后台访问控制
    public function __construct() {
        parent::__construct();
        if((empty($_SESSION['auth'])) && (ACTION_NAME!=='login')){
            $this->error('跳转至登录页',U('Auth/login'),3);
        }
    }
}