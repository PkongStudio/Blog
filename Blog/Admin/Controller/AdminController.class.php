<?php
namespace Admin\Controller;
use Think\Controller;
class AdminController extends AccessController {
    public function index(){
        $this->display();
    }
}