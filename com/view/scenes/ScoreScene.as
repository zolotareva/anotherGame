package com.view.scenes 
{
	import flash.display.Sprite;
	import flash.text.TextField;

	public class ScoreScene extends Sprite
	{
		
		public var score:TextField;
		
		public function ScoreScene() 
		{
			
		}
		
		public function showScore( score:int ):void
		{
			this.score.text = score.toString();
		}
		
	}

}