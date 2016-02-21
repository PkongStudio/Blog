<?php
namespace Admin\Model;
use Think\Model;
class ImageModel extends Model {
	protected $tableName = 'photo';

	//调整图片并获取主键id
	public function getCover(){
		$url = $this->adjustImagesize();
		dump($url);
		$id = $this->writeUrl($url);
		return $id;
	}


	//添加图片url到数据库
	public function writeUrl($url){
		$obj = M('photo');
		$data['url'] = $url;
		$key = $obj->add($data);
		dump($url);
		return $key;
	}

	//上传处理封面图
	public function adjustImagesize(){
		header("Content-type:text/html;charset=utf-8");
		$errorinfo = $_FILES['pic']['error'];
		$temp_name = $_FILES['pic']['tmp_name'];
		$type =  $_FILES['pic']['type'];
		$filename = iconv("utf-8","gb2312",$_FILES['pic']['name']);
		$uploadPath = "Public/image/album/$filename";
		//var_dump($_FILES['pic']);

		if($errorinfo == UPLOAD_ERR_OK)
		{

			move_uploaded_file($temp_name, $uploadPath);
			$url = 'http://localhost/Blog/'.$uploadPath;
			$this->writeUrl($url);

			//缩略图尺寸
			$sizearr = getimagesize($uploadPath);
			$beishu = 800/($sizearr[0]);//请在这里输入封面照片宽度		
			$size = array('height' => ($sizearr[1]*$beishu) , 'weight' => ($sizearr[0]*$beishu) );  
			
			//载入图片
			$src = $uploadPath;
			$info = getimagesize($src);
			dump($info);
			$type = image_type_to_extension($info[2], false);
			//dump($type);
			$load = "imagecreatefrom{$type}";
			$srcimage = $load($src);

			//制作缩略图
			$nail = imagecreatetruecolor($size['weight'], $size['height']);
			imagecopyresampled($nail, $srcimage, 0, 0, 0, 0, $size['weight'], $size['height'], $info[0], $info[1] );
			imagedestroy($srcimage);

			//输出缩略图
			ob_clean();
			header("Content-type:".$info['mime']);
			$output = "image{$type}";
			$desdir = 'Public/image/cover/'.$filename;
			$output($nail, $desdir);
			imagedestroy($nail);
			$url = "http://localhost/Blog/".$desdir;
			return $url; 

		}else{
			switch($errorinfo)
			{
				case 1:
					echo "<script>alert('上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值');</script>";
					break;
				case 2:
					echo "<script>alert('上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。');</script>";
					break;			
				case 3:
					echo "<script>alert('文件只有部分被上传。');</script>";
					break;
				case 4:
					echo "<script>alert('没有文件被上传。');</script>";
					break;	
				case 6:
					echo "<script>alert('找不到临时文件夹');</script>";
					break;
				case 7:
					echo "<script>alert('文件写入失败');</script>";
					break;

			}
			echo "<script>window.location.href='../index.html';</script>";		
		}

	}

	
}