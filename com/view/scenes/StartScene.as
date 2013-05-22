package com.view.scenes 
{
	import com.controller.events.SceneEvent;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class StartScene extends Sprite
	{
		
		public var startButton:SimpleButton;
		
		public function StartScene() 
		{
			startButton.addEventListener(MouseEvent.CLICK, onStartButtonClick);
		}
		
		private function onStartButtonClick(e:MouseEvent):void
		{
			dispatchEvent( new SceneEvent(SceneEvent.CHANGE, Scenes.GAME_SCENE) );
		}
		
	}

}