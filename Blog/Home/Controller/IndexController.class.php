<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {

	//显示首页
    public function index(){
		$this->getArticleList();//获取文章列表
        $this->getMsgboard();//获取留言板

        $this->display();
    }

    //获得文章列表
    private function getArticleList() {
    	$obj = D('Article');
    	$data = $obj->listArt();
		$this->assign('list', $data['list']);
		$this->assign('page', $data['page']);
    }

    //显示文章详情页
    public function art(){
        $this->getArt();
        $id = I('get.id/d','0','int');
        $this->cm($id);
        $this->display();
    }

    //获取文章
    private function getArt(){
        $obj = D('Article');
        $id = I('get.id/d','0','int');
        $data = $obj->getArt($id);
        if (empty($data)) {
            $this->error('文章已删除或不存在');
        }else{
            $this->assign('art',$data);
        }
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
    public function cm($id){    
        $obj = D('Comment');
        $data = $obj->getComment($id);
        $this->assign('cm', $data);
    }

    //添加评论
    public function addCm(){
        $obj = D('Comment');
        $obj->writeCm();
        $id = $_POST['article_id'];
        $this->cm($id);
        $this->display('cm');
    }

    //通过分类id查找
    public function searchByCate(){
        $obj = D('Article');
        $data = $obj->searchByCate();
        $this->assign('list', $data['list']);
        $this->assign('page', $data['page']);
        $this->assign('cate', $data['cate']);
        $this->getMsgboard();//获取留言板
        $this->display('index');
    }

}