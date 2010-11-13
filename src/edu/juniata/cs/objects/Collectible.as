package edu.juniata.cs.objects
{
	import org.flixel.FlxSprite;
	
	public class Collectible extends FlxSprite
	{
		public function Collectible(x:Number, y:Number):void
		{
			super(x,y);
			//loadGraphic(ImgCoin,true,false,16,16);
			//addAnimation("Spinning",[0,1,2,3],7,true);
			//loadGraphic(ImgCoin,false,false,16,16);
		}
		override public function update():void
		{
			//play("Spinning");
			super.update();
		}
	}
}