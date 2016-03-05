<?php
namespace Admin\Model;
use Think\Model;
class CommentModel extends Model {

	//获取评论
	public function getCm(){
		$obj = M('comment');
		$cm = $obj->field('a.id,a.nickname,a.content,b.nickname AS parent,c.title AS article_title,c.article_id')->table('comment AS a')->join('LEFT JOIN comment AS b ON a.pid = b.id')->join('LEFT JOIN article AS c ON a.article_id = c.article_id')->order('a.id desc')->select();
		return $cm;
	}

	public function delCm(){
		$obj = M('comment');
		$id = I('get.id',999);
		if($obj->where('id='.$id)->delete()){
			return true;
		}else{
			return false;
		}
	}
}