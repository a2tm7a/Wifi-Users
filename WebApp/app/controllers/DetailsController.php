<?php
	
	namespace Controllers ;
	
	use Models\UpdateData;

	class DetailsController
	{
		protected $twig;

		public function __construct()
		{
			$loader = new \Twig_Loader_Filesystem(__DIR__ . "/../views") ;
			$this->twig = new \Twig_Environment($loader) ;
		}

		public function post()
		{
			$username=$_POST['username'];
			$mac_address=$_POST['mac_address'];

			$update=UpdateData::addusername($username,$mac_address);

			echo $this->twig->render('adduser.html', array(
					"title" => "Added",
					"response" => $username)) ;
		}
	}

