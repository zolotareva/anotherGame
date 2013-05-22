package com.model 
{
	import com.view.View;
	import com.controller.Controller;

	public class Game
	{
		
		private var model:Model;
		private var view:View;
		private var controller:Controller;
		
		public function Game() {
			
			view = new View();
			model = new Model();
			controller = new Controller( model, view );
		}
		
	}

}