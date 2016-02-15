<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {

	//显示首页
    public function index(){
		$articleDate = $this->showArticleList();//显示文章列表

    }

    //显示文章列表
    private function showArticleList() {
    	$article = M('article'); // 实例化artcle对象
    	$p = I('get.p',1);//$p赋值
		$list = $article->page($p.',5')->select();
		$this->assign('list',$list);// 赋值数据集
		$count      = $article->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,5);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }
}