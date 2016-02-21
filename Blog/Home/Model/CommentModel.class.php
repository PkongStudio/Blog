<?php
namespace Home\Model;
use Think\Model;
class CommentModel extends Model {

	//获取评论
	public function getComment(){
		$obj = M('comment');
		$cm = $obj->select();
		$cm = self::unlimitedSort($cm);
		var_dump($cm);
		return $cm;
	}

	//无限分类
	static public function unlimitedSort($data, $pid = 0) {
		$result = array();
		foreach ($data as $value) {
			if($value['parent_id'] == $pid){
				$value['child'] = self::unlimitedSort($data, $value['cm_id']);
				$result[] = $value;
			}
		}
		return $result;
	}
}