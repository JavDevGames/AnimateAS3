package 
{
	import animations.attentionseekers.AttentionSeekers;
	import animations.bouncingentrances.BouncingEntrances;
	import animations.bouncingexits.BouncingExits;
	import animations.fadingentrances.FadeInEntrances;
	import animations.fadingexits.FadingExits;
	import flash.display.BitmapData;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author Javier
	 */
	public class TestScene extends Sprite
	{
		private var mTestImage:Image;
		
		public function TestScene() 
		{
			var bmpData:BitmapData = new BitmapData(80, 80, false, 0xffff0000);
			var texture:Texture = Texture.fromBitmapData(bmpData);
			mTestImage = new Image(texture);
			mTestImage.x = Starling.current.viewPort.width / 2 - mTestImage.width / 2;
			mTestImage.y = Starling.current.viewPort.height / 2 - mTestImage.height / 2;
			
			var testAnim:Tween = FadingExits.FadeOutUp(mTestImage, 1000);
			Starling.juggler.add(testAnim);
			
			addChild(mTestImage);
		}
		
	}

}