<?php
namespace Admin\Model;
use Think\Model;
class AdminModel extends Model{

	function findOne_by_username($username){
		$data = D('Admin');
		$where['username'] = $username;
		$data = $data->where($where)->find();
		return $data;
	}
}