package com.view.elements 
{
	import flash.display.Sprite;
	import flash.events.Event;

	public class Bird extends Sprite
	{
		private var s:int = 2;
		private var ys:uint;
		
		public function Bird( x:int = 1, y:int = 1) 
		{
			
			this.x = x;
			this.y = y
			scaleX = scaleY = 0.3 + 0.7 * Math.random();
			s = 1 + 5 * Math.random();

			
			addEventListener(Event.ENTER_FRAME, onEveryFrame);
		}
		
		private function onEveryFrame(e:Event):void
		{
			x -= s;
			if ( x < 5 ) {
				x = 600;
			}
		}
		
		public function destroy():void
		{
			removeEventListener(Event.ENTER_FRAME, onEveryFrame);
		}

	}

}