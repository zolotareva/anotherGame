package com.model 
{

	public class Score
	{
		static public const m:int = 1000;
		
		private var score:int;
		
		public function Score() 
		{
			
		}
		
		public function setScore( value:int ):void
		{
			score += value;
		}
		
		public function getScore():int
		{
			return score;
		}
		
	}

}