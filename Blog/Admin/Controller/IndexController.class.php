<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	$this->getlist();
    	$this->getCm();
        $this->display('Admin/manage');
    }

    //获取编辑列表
	public function getlist(){
		$obj = D('Article');
		$data = $obj->listArt();
		$this->assign('list', $data['list']);
		$this->assign('page', $data['page']);
	}

	//获取评论列表
	public function getCm(){
		$obj = D('Comment');
		$data = $obj->getCm();
		$this->assign('cm',$data);
	}

	public function mima(){
		$obj = D('Auth');
		return $obj->hash('root');
	}
}