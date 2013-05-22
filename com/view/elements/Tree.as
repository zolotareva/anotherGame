package com.view.elements 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class Tree extends Sprite
	{
		
		private var s:int = 3;
		
		public function Tree(big:Boolean = true, x:int = 1, y:int = 1) {
			this.x = x;
			this.y = y;
			
			
			addEventListener(Event.ENTER_FRAME, onEveryFrame);
		}
		
		private function onEveryFrame(e:Event):void {
			
			x -= s;
			if ( x < 0 ) {
				x = 600;
			}
		}
		
		
	}

}