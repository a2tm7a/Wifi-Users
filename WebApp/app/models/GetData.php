<?php

	namespace Models;

	use Models\DBConnect;

	class GetData
 	{
 		public static function getData()
 		{
 			$db = DBConnect::getDB() ;
			$device = $db->prepare("SELECT * FROM Detect") ;
 			$device->execute();
 			$row=$device->fetchAll(\PDO::FETCH_ASSOC);
			$connected_devices=$row;

			return $connected_devices;
		}
	}	