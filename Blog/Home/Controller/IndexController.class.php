<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {

	//显示首页
    public function index(){
		$articleDate = $this->showArticleList();//显示文章列表
        //$this->cm();
        $this->display('article');
    }

    //显示文章列表
    private function showArticleList() {
    	$obj = D('Article');
    	$data = $obj->listArt();
		$this->assign('list', $data['list']);
		$this->assign('page', $data['page']);
    }

    //评论
    public function cm(){
        $article_id = I('get.id',0);
        $obj = D('Comment');
        $data = $obj->getComment();
        $this->assign('comment', $data);
        dump($data);
        $this->display('comment');
    }
}