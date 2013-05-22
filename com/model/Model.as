package com.model 
{
	import flash.events.EventDispatcher;
	import com.controller.events.SceneEvent;
	import com.view.scenes.Scenes;
	
	public class Model extends EventDispatcher
	{
		private var scene:uint;
		private var score:Score;
		
		public function Model() 
		{
			score = new Score();
		}
		
		public function getScore():int
		{
			return score.getScore();
		}
		
		public function setScore(value:int):void
		{
			score.setScore(10);
			
			if (score.getScore() == Score.m) {
				dispatchEvent(new SceneEvent(SceneEvent.CHANGE, Scenes.SCORE_SCENE));
			}
		}
		
		public function setScene( scene:uint ):void
		{
			this.scene = scene;
		}
		
		public function getScene():uint
		{
			return scene;
		}
		
		private function retranslateEvent(e):void
		{
			dispatchEvent( e.clone() );
		}
		
		
	}

}