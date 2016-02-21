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
					$this->display('Article/post');
				}else{
					$this->error('出现错误');
				}
			}
		}else{
			if(empty($_POST['article_id'])){
				if($obj->write()){
					$this->success('发布成功','edit',2);
				}else{
					$this->error($obj->getErrorMsg(),'',1);
				}
			}else{
				if($obj->modify()){
					$img = D('Image');
					$res = $img->adjustImagesize();
					$this->success('修改成功','edit',3);
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
			$this->success('已删除',U('Article/edit'),2);
		}
	}

	//图片上传
	public function upload(){
	    //$upload = new \Think\Upload();// 实例化上传类
	    //$upload->maxSize   =     0 ;// 设置附件上传大小
	    //$upload->exts      =     array();// 设置附件上传类型
	    //$upload->rootPath  =     './Public/'; // 设置附件上传根目录
	    //$upload->savePath  =     './image/'; // 设置附件上传（子）目录
	    // 上传文件 
	    //$info   =   $upload->upload();
	    //if(!$info) {// 上传错误提示错误信息
	       // echo 'error|'.$upload->getError();
	    //}else{// 上传成功
	        //echo 'error|'.var_dump($info);
	    //}
	    echo var_dump($_FILES);
	}
}
	