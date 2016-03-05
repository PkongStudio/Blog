<?php
namespace Home\Model;
use Think\Model;
class ArticleModel extends Model {



	//列表
	public function listArt(){
		$obj = M('article'); 
    	$p = I('get.p',1);//获取页码
		$count = $obj->count();
		$Page  = new \Think\Page($count,5);
		//获取文章及封面
		$list['list'] = $obj->field('article_id,title,release_date,summary,photo.url as cover,cate.cate_name,cate.id AS cate_id')->join('LEFT JOIN photo ON article.cover = photo.id')->join('LEFT JOIN cate ON article.cate_id = cate.id')->order('article_id desc')->page($p.',5')->select();
		$list['page'] = $Page->show();
		return $list;
	}

	//文章内容
	public function getArt($id){
		$obj = M('article');
		$data = $obj->field('article_id,title,release_date,content,cate.id,cate_name')->join('LEFT JOIN cate ON article.cate_id = cate.id')->where('article_id ='.$id)->find();
		return $data;
	}

	//通过分类id查找
	public function searchByCate(){
		$obj = M('article'); 
		$cate = M('cate');
    	$p = I('get.p',1);//获取页码
    	$cate_id = I('get.cate_id',1);
		$count = $obj->where('cate_id ='.$cate_id)->count();
		$Page  = new \Think\Page($count,5);
		//获取文章及封面
		$list['list'] = $obj->field('article_id,title,release_date,summary,photo.url as cover,cate.cate_name,cate.id AS cate_id')->join('LEFT JOIN photo ON article.cover = photo.id')->join('LEFT JOIN cate ON article.cate_id = cate.id')->order('article_id desc')->where('cate_id ='.$cate_id)->page($p.',5')->select();
		$list['page'] = $Page->show();
		$list['cate'] = $cate->field('cate_name')->where('id = '.$cate_id)->find();
		//dump($list['cate']);
		return $list;
	}

}