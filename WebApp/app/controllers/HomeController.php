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
			$connected_devices=GetData::getDetails();
			echo $this->twig->render('index.html', array(
				"title" => "Time",
				"connected_devices" => $connected_devices)) ;
		}

	}