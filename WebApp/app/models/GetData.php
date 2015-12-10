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
		public static function onlineDevices()
		{
			$db = DBConnect::getDB();
			$devices = $db->prepare("SELECT NAME, MAC_Address FROM Detect WHERE ONLINE = TRUE");
			$devices -> execute();
			$row = $devices->fetchAll(\PDO::FETCH_ASSOC);
			$online_Devices=$row;

			return $online_Devices;
		}
	}	