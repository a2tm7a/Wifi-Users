<?php
	
	namespace Models;

	class DBConnect
	{
		
		public static function getDB()
		{
			require __DIR__."/../../configs/credentials.php" ;
			return new \PDO("mysql:dbname=" . $db_connect['db_name'] . ";host=" . $db_connect['host'] , $db_connect['username'] , $db_connect['password']) ;
		}
	}