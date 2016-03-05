<?php
namespace Admin\Model;
use Think\Model;
class ImageModel extends Model {
	protected $tableName = 'photo';
	public $error;
	public $filename;
	public $type;
	public $uploadPath;

	//添加图片url到数据库
	public function writeUrl($url){
		$obj = M('photo');
		$data['url'] = $url;
		$key = $obj->add($data);
		//dump($url);
		return $key;
	}

	//封面照片上传处理
	public function getCover(){
		if(!empty($_FILES['pic']['name'])){
			if($url = $this->upload()){
				$this->writeUrl($url);
				$url = $this->adjustImagesize();
				$id = $this->writeUrl($url);
				return $id;
			}else{
				//dump($_FILES[$name]);
				exit($this->error);
			}			
		}else{
			return NULL;
		}
	}

	//上传
	public function upload($name='pic'){
		//dump($_FILES);
		$errorinfo = $_FILES[$name]['error'];
		$temp_name = $_FILES[$name]['tmp_name'];
		$this->type =  $_FILES[$name]['type'];
		$this->filename = iconv("utf-8","gb2312",$_FILES[$name]['name']);
		$this->uploadPath = "Public/image/album/".time().$this->filename;
		if($errorinfo == UPLOAD_ERR_OK)
		{
			//dump($this->uploadPath);
			move_uploaded_file($temp_name, $this->uploadPath);
			$url = 'http://localhost/Blog/'.$this->uploadPath;
			//dump($url);
			return $url;
		}else{
			switch($errorinfo)
			{
				case 1:
					$this->error = '上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值';
					break;
				case 2:
					$this->error ='上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。';
					break;			
				case 3:
					$this->error ='文件只有部分被上传。';
					break;
				case 4:
					$this->error ='没有文件被上传。';
					break;	
				case 6:
					$this->error ='找不到临时文件夹';
					break;
				case 7:
					$this->error ='文件写入失败';
					break;
			}
			return false;
		}	
	}

	//调整尺寸
	public function adjustImagesize(){
			
			//缩略图尺寸
			$sizearr = getimagesize($this->uploadPath);
			$beishu = 800/($sizearr[0]);//请在这里输入封面照片宽度		
			$size = array('height' => ($sizearr[1]*$beishu) , 'weight' => ($sizearr[0]*$beishu) );  
			
			//载入图片
			$src = $this->uploadPath;
			dump($src);
			$info = getimagesize($src);
			//dump($info);
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
			$desdir = 'Public/image/cover/'.$this->filename;
			$output($nail, $desdir);
			imagedestroy($nail);
			$url = "http://localhost/Blog/".$desdir;
			return $url; 
	}	
}