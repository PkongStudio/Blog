<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {

	//显示首页
    public function index(){
		$this->showArticleList();//获取文章列表
        $this->getMsgboard();//获取留言板

        $this->display('article');
    }

    //显示文章列表
    private function showArticleList() {
    	$obj = D('Article');
    	$data = $obj->listArt();
		$this->assign('list', $data['list']);
		$this->assign('page', $data['page']);
    }

    //获取留言板留言榜
    public function getMsgboard() {
        $obj = D('MsgBoard');
        $data = $obj->getMsg();
        $this->assign('mb',$data);
    }

    //添加留言
    public function addMsg(){
        $obj = D('MsgBoard');
        $obj->writeMsg();
        $this->getMsgboard();
        $this->display('msgBoard');
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