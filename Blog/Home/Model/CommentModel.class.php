<?php
namespace Home\Model;
use Think\Model;
class CommentModel extends Model {

	//获取评论
	public function getComment($id){
		$obj = M('comment');
		$cm = $obj->where('article_id ='.$id)->order('id desc')->select();
		$cm = self::unlimitedSort($cm);
		//dump($cm);
		return $cm;
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

	//添加评论
	public function writeCm(){
		$obj = M('comment');
		if(empty($_POST['pid'])){
			$_POST['pid'] = 0;
		}
		$data = $obj->create();
		$obj->add($data);
	}
}