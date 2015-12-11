<?php
	
	namespace Controllers ;
	use Models\GetData;

	class HomeController
	{
		protected $twig;

		public function __construct()
		{
			$loader = new \Twig_Loader_Filesystem(__DIR__ . "/../views") ;
			$this->twig = new \Twig_Environment($loader) ;
		}

		public function get()
		{
			$connected_devices=GetData::getData();
			$online_devices=GetData::onlineDevices();
			$devices_without_name=GetData::withoutName();
			echo $this->twig->render('index.html', array(
				"title" => "Time",
				"connected_devices" => $connected_devices,
				"online_devices" => $online_devices,
				"devices_without_name" => $devices_without_name)) ;
		}

	}