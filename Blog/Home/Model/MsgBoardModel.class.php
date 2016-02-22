<?php
namespace Home\Model;
use Think\Model;

class MsgBoardModel extends Model {

	//获取留言
	public function getMsg() {
		$obj = M('msg_board');
		$data = $obj->order('id desc')->select();
		$data = $this->unlimitedSort($data);//用无限分类处理留言
		return $data;
	}

	//添加留言
	public function writeMsg(){
		$obj = M('msg_board');
		$data = $obj->create();
		$obj->add($data);
	}

	//无限分类
	static public function unlimitedSort($data, $pid = 0) {
		$result = array();
		foreach ($data as $value) {
			if($value['pid'] == $pid){
				$value['child'] = self::unlimitedSort($data, $value['id']);
				$result[] = $value;
			}
		}
		return $result;
	}
}