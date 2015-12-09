<?php

	namespace Models;
	use Models\DBConnect;

	class UpdateData
 	{
 		public static function getData($name , $id)
 		{
 			$db = DBConnect::getDB() ;
			$device = $db->prepare("SELECT * FROM Detect") ;
 			$device->execute();
 			$row=$add_user->fetchAll(\PDO::FETCH_ASSOC);
			$connected_devices=$row;

			return $connected_devices;
		}
	}	