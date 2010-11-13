package edu.juniata.cs.entities
{
	import org.flixel.*;
	
	public class Enemy extends FlxSprite	
		
	{
		[Embed(source="../res/mario.png")]
		private var ImgPlayer:Class;
		
		public function Enemy() 
		{
			super(240,70);
			createGraphic(16,12,0xffaa1111);
			
			maxVelocity.x = 80;
			maxVelocity.y = 300;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
		}
		
		override public function update():void
		{
			if(onFloor)
				velocity.x = 25;
			
			super.update();
		}
		
		override public function hitTop(Contact:FlxObject, Velocity:Number):void
		{
			this.kill();
		}
		
		
	}
}