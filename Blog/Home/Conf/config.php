<?php
return array(
	//'配置项'=>'配置值'
	'DB_TYPE'=>'mysql',//数据库类型
	'DB_HOST'=>'localhost',//数据库服务器地址
	'DB_NAME'=>'blog',//数据库名
	'DB_USER'=>'root',//数据库用户
	'DB_PWD'=>'',//数据库用户密码
	'DB_PORT'=>'3306',//数据库端口(默认3306)，可以不配置
	'DB_PREFIX'=>'',//数据库表前缀
	//'SHOW_PAGE_TRACE' =>true, 
	//数据库配置好后,并非立即连接,TP数据库连接是一种惰性连接,只有在实例化时才连接。
	//开启主从读写分离,读操作使用从服务器,写操作使用主服务器,这样就能给数据库进行负载均衡
	//'DB_RW_SEPARATE'=>true,
	//多个主数据库服务器,localhost,localhost1为主服务器,localhost2为从服务器
	//'DB_MASTER_NUM'=>'2',
);