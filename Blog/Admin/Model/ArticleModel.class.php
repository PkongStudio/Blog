<?php
namespace Admin\Model;
use Think\Model;
class ArticleModel extends Model {

	//数据验证规则
	public $data_vail_rules = array(
		array('title','require','标题不能为空'),
		array('content','require','内容不能为空'),
	);

	public $error = '';

	//返回错误信息
	public function getErrorMsg($error) {
		return $this->error;
	}

	//添加
	public function write(){ 
		$obj = M('article');
		if($data = $this->createData()){
			$obj->add($data);
			return true;
		}else{
			return false;
		}
	}

	//修改
	public function modify(){
		$obj = M('article');
		if($data = $this->createData()){
			$obj->save($data);
			return true;
		}else{
			return false;
		}
	}

	//删除
	public function delete(){
		$obj = M('article');
		if($obj->delete($_GET['id'])){
			return true;
		}
	}

	//列表
	public function listArt(){
		$obj = M('article'); 
    	$p = I('get.p');
		$count = $obj->count();
		$Page  = new \Think\Page($count,5);
		$list['list'] = $obj->order('article_id desc')->page($p.',5')->select();
		$list['page'] = $Page->show();
		return $list;
	}

	//创建数据
	public function createData(){
		$obj = M('article');
		if($data = $obj->validate($this->data_vail_rules)->create()){
			$obj = D('Image');
			$data['cover'] = $obj->getCover();
			return $data;
		}else{
			$this->error = $obj->geterror();
			return false;
		}	
	}

	//通过article_id查找
	public function findById(){
		$obj = M('article');
		$where['article_id'] = $_GET['id'];
		if($data = $obj->where($where)->find()){
			return $data;
		}else{
			return false;
		}		
	}

	//封面照片处理
	public function coverImage(){
		$img = D('Image');
		$res = $img->adjustImagesize();

		return $res;				
	}
}