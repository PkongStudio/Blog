<?php
namespace Home\Model;
use Think\Model;
class ArticleModel extends Model {



	//列表
	public function listArt(){
		$obj = M('article'); 
    	$p = I('get.p');//获取页码
		$count = $obj->count();
		$Page  = new \Think\Page($count,5);
		//获取文章及封面
		$list['list'] = $obj->field('article_id,title,release_date,summary,photo.url as cover')->join('LEFT JOIN photo ON article.cover = photo.id')->order('article_id desc')->page($p.',5')->select();
		$list['page'] = $Page->show();
		return $list;
	}

}