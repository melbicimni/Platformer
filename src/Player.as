package 
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	/**
	 * ...
	 * @author Michael Baker and Sean Petrick
	 */
	public class Player extends FlxSprite
	{
		
		[Embed(source="../res/mario.png")]
		private var ImgPlayer:Class;
		
		public function Player(spawnX:Number, spawnY:Number):void
		{
			super(spawnX, spawnY);
			
			loadGraphic(ImgPlayer, true, true, 16, 32);
			
			addAnimation("walking", [0, 1, 2], 10 , true);
			addAnimation("still", [2], 10);
			maxVelocity.x = 80;
			maxVelocity.y = 300;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
			
		}
		
		
		
		override public function update():void
        {
			//Player movement and controls
			acceleration.x = 0;
			
			
			if (FlxG.keys.LEFT) {
				facing = RIGHT;
				acceleration.x = -maxVelocity.x * 4;
			}
			if (FlxG.keys.RIGHT)
			{
				facing = LEFT;
				acceleration.x = maxVelocity.x*4;
			}
			if (FlxG.keys.SPACE && onFloor) {
				velocity.y = -maxVelocity.y/2;
			}
			
			if (velocity.x != 0)
			{
				play("walking");
			}
			else 
			{
				play("still");
			}
			
			//Updates all the objects appropriately
			super.update();
		}
		
	}

}