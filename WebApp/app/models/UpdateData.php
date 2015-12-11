<?php

	namespace Models;

	use Models\DBConnect;

	class UpdateData
 	{

		public static function addusername($username,$mac_address)
		{
			$db = DBConnect::getDB() ;
			$device = $db->prepare("UPDATE Detect SET Name = :username WHERE MAC_Address = :mac_address");
			$par=array(
 					":username" => $username,
 					":mac_address" => $mac_address);
 			$device->execute($par);
 			$row=$device->fetch();
 			if($row)
 			{
 				return true;
 			}
 			else
 			{
 				return false;
 			}
			
		}
	}
