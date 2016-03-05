<?php
namespace Admin\Model;
use Think\Model;
class CateModel extends Model {

	//获取类别
	public function getCate(){
		$obj = M('cate');
		$data = $obj->select();
		return $data;
	}

	//写入标签
	public function writeCate(){
		$obj = M('cate');
		$data = $obj->create();
		if($obj->add($data)){
			return true;
		}else{
			return false;
		}
		
	}

	//删除标签
	public function delCate(){
		$obj = M('cate');
		$id = I('get.id',999);
		if($obj->where('id='.$id)->delete()){
			return true;
		}else{
			return false;
		}
	}
}