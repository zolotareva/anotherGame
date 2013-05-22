package com.view.scenes 
{
	import com.controller.events.SceneEvent;
	import com.controller.events.ScoreEvent;
	import com.view.elements.Bird;
	import com.view.elements.Cart;
	import com.view.elements.GameSceneBackground;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;

	public class GameScene extends Sprite
	{
		
		//private var birds:Array = [5];
		private var birds:Array = [];
		private var cart:Cart;
		private var background:GameSceneBackground;
		
		public function GameScene() 
		{
			
			background = new GameSceneBackground();
			addChild(background);
			cart = new Cart();
			addChild(cart);
			
		
			addBirds(10);
			
			addEventListener(Event.ENTER_FRAME, onEveryFrame);
			addEventListener(SceneEvent.CHANGE, onSceneEvent);
		}
		
		public function moveDragonLeft():void
		{
			cart.x -= 5;
		}
		
		public function moveDragonRight():void
		{
			cart.x += 5;
		}
		public function moveDragonUp():void
		{
			cart.y -= 5;
		}
		
		public function moveDragonDown():void
		{
			cart.y += 5;
		}
		
		private function addBirds(count:int):void {
			for ( var i:int = 0; i < count; i++ ) {
				birds.push(new Bird(600, 300 +- 400 * Math.random()));				
				addChild(birds[birds.length-1]);
			}
		}
		
		//
		private function checkCollision( object_1:DisplayObject, object_2:DisplayObject ):Boolean
		{
			return object_1.hitTestObject(object_2);
		}
		
		private function onEveryFrame(e:Event):void {
			var bNum: int = birds.length;
			for ( var i: int = 0; i < bNum; i++ ) {
				if ( checkCollision(birds[i],cart) ) {
					removeBird(i);				
					dispatchEvent(new ScoreEvent(ScoreEvent.CHANGE, 1 ));
					addBirds(1);
				}
			}
		}
		
		
		private function onSceneEvent(e:SceneEvent):void {
			if (e.scene == Scenes.SCORE_SCENE) {
				var bNum: int = birds.length;
				for (var i: int = 0; i < bNum; i++) {
				removeBird(i);
				}
			}
		}
		
		private function removeBird( i:int ):void {
			birds[i].destroy();
			removeChild(birds[i]);
			birds.splice(i, 1); //deletecount
			
		}
		
		}
		
	}
