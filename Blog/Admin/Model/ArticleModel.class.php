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
	public function write() { 
		$obj = M('article');
		if($data = $this->createData()){
			$obj->add($data);
			return true;
		}else{
			return false;
		}
	}

	//修改
	public function modify() {
		$obj = M('article');
		if($data = $this->createData()){
			$obj->save($data);
			return true;
		}else{
			return false;
		}
	}

	//列表
	public function listArt(){
		$obj = M('article'); // 实例化artcle对象
    	$p = I('get.p');//$p赋值
		$count = $obj->count();// 查询满足要求的总记录数
		$Page  = new \Think\Page($count,5);// 实例化分页类 传入总记录数和每页显示的记录数
		$list['list'] = $obj->field('content',true)->order('article_id desc')->page($p.',5')->select();
		$list['page'] = $Page->show();// 分页显示输出
		return $list;
	}

	//创建数据
	public function createData(){
		$obj = M('article');
		if($data = $obj->validate($this->data_vail_rules)->create()){
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
}