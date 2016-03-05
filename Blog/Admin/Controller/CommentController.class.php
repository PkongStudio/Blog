<?php
namespace Admin\Controller;
use Think\Controller;

class CommentController extends AccessController {

	//添加
	public function addCm(){
		$obj = D('Comment');
		if($obj->writeCm()){
			$this->success('添加成功','Index/manage',3);
		}else{
			$this->error('添加失败','Index/manage',3);
		}
	}

	//删除
	public function delCm(){
		$obj = D('Comment');
		if($obj->delCm()){
			$this->success('删除成功',U('Index/index'),3);
		}else{
			$this->error('删除失败','',3);
		}
	}

}