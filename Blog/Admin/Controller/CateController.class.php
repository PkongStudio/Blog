<?php
namespace Admin\Controller;
use Think\Controller;

class CateController extends AccessController {

	//类别页
	public function edit(){
		$obj = D('cate');
		$data = $obj->getCate();
		$this->assign('cate',$data);
		$this->display();
	}

	//添加
	public function addCate(){
		$obj = D('Cate');
		if($obj->writeCate()){
			$this->success('添加成功','edit',3);
		}else{
			$this->error('添加失败','edit',3);
		}
	}

	//删除
	public function delCate(){
		$obj = D('Cate');
		if($obj->delCate()){
			$this->success('删除成功','edit',3);
		}else{
			$this->error('删除失败','edit',3);
		}
	}
}