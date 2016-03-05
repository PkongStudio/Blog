<?php
namespace Admin\Controller;
use Think\Controller;

class ArticleController extends AccessController {

	//编辑列表
	public function edit(){
		$obj = D('Article');
		$data = $obj->listArt();
		$this->assign('list', $data['list']);
		$this->assign('page', $data['page']);
		$this->display();
	}

	//增改
	public function post(){
		$obj = D('Article');
		if(empty($_POST)){
			if(empty($_GET['id'])){
				$this->display('Article/post');
			}else{
				if($data = $obj->findById()){
					$this->assign($data);
					$this->display('Admin/modify');
				}else{
					$this->error('出现错误');
				}
			}
		}else{
			if(empty($_POST['article_id'])){
				if($obj->write()){
					$this->success('发布成功',U('Index/index'),1);
				}else{
					$this->error($obj->getErrorMsg(),'',1);
				}
			}else{
				if($obj->modify()){
					$this->success('修改成功',U('Index/index'),1);
				}else{
					$this->error($obj->getErrorMsg(),'',1);
				}
			}
		}
	}

	
	//删除
	public function delete(){
		$obj = D('Article');
		if($obj->delete()){
			$this->success('已删除',U('Index/index'),2);
		}
	}

	//上传文章中图片
	public function upload(){
		$obj = D('Image');
		$url = $obj->upload('wangEditorH5File');
		$obj->writeUrl($url);
		echo $url;
	}

}
	