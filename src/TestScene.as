package 
{
	import animations.attentionseekers.AttentionSeekers;
	import animations.bouncingentrances.BouncingEntrances;
	import animations.bouncingexits.BouncingExits;
	import animations.fadingentrances.FadeInEntrances;
	import animations.fadingexits.FadingExits;
	import animations.rotatingentrances.RotatingEntrances;
	import animations.rotatingexits.RotatingExits;
	import animations.slidingentrances.SlidingEntrances;
	import animations.slidingexits.SlidingExits;
	import animations.zoomingentrances.ZoomingEntrances;
	import animations.zoomingexits.ZoomingExits;
	import flash.display.BitmapData;
	import flash.events.Event;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.KeyboardEvent;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author Javier
	 */
	public class TestScene extends Sprite
	{
		private var mTestImage:Image;
		private var mCurIdx:int;
		private var mAnims:Vector.<Function>;
		
		public function TestScene() 
		{
			var bmpData:BitmapData = new BitmapData(80, 80, false, 0xffff0000);
			var texture:Texture = Texture.fromBitmapData(bmpData);
			mTestImage = new Image(texture);
			mTestImage.x = Starling.current.viewPort.width / 2 - mTestImage.width / 2;
			mTestImage.y = Starling.current.viewPort.height / 2 - mTestImage.height / 2;
			
			mAnims = new <Function>[AttentionSeekers.Bounce, AttentionSeekers.Flash, AttentionSeekers.Flash, AttentionSeekers.Pulse, AttentionSeekers.RubberBand, AttentionSeekers.Shake,
									AttentionSeekers.Swing, AttentionSeekers.Tada, AttentionSeekers.Wobble,
									BouncingEntrances.BounceIn, BouncingEntrances.BounceInDown, BouncingEntrances.BounceInLeft, BouncingEntrances.BounceInRight, BouncingEntrances.BounceInUp,
									BouncingExits.BounceOut, BouncingExits.BounceOutDown, BouncingExits.BounceOutLeft, BouncingExits.BounceOutRight, BouncingExits.BounceOutUp,
									FadeInEntrances.FadeIn, FadeInEntrances.FadeInDown, FadeInEntrances.FadeInDownBig, FadeInEntrances.FadeInLeft, FadeInEntrances.FadeInLeftBig, FadeInEntrances.FadeInRight,
									FadeInEntrances.FadeInRightBig, FadeInEntrances.FadeInUp, FadeInEntrances.FadeInUpBig,
									FadingExits.FadeOut, FadingExits.FadeOutDown, FadingExits.FadeOutDownBig, FadingExits.FadeOutLeft, FadingExits.FadeOutLeftBig, FadingExits.FadeOutRight, FadingExits.FadeOutRightBig,
									FadingExits.FadeOutUp, FadingExits.FadeOutUpBig,
									RotatingEntrances.RotateIn, RotatingEntrances.RotateInDownLeft, RotatingEntrances.RotateInDownRight, RotatingEntrances.RotateInUpLeft, RotatingEntrances.RotateInUpRight,
									RotatingExits.RotateOut, RotatingExits.RotateOutDownLeft, RotatingExits.RotateOutDownRight, RotatingExits.RotateOutUpLeft, RotatingExits.RotateOutUpRight,
									SlidingEntrances.SlideInDown, SlidingEntrances.SlideInLeft, SlidingEntrances.SlideInRight, SlidingEntrances.SlideInUp,
									SlidingExits.SlideOutDown, SlidingExits.SlideOutLeft, SlidingExits.SlideOutRight, SlidingExits.SlideOutUp,
									ZoomingEntrances.ZoomIn, ZoomingEntrances.ZoomInDown, ZoomingEntrances.ZoomInLeft, ZoomingEntrances.ZoomInRight, ZoomingEntrances.ZoomInUp,
									ZoomingExits.ZoomOut, ZoomingExits.ZoomOutDown, ZoomingExits.ZoomOutLeft, ZoomingExits.ZoomOutRight, ZoomingExits.ZoomOutUp];
			
			SelectAnim(mTestImage, 1000);
			
			addChild(mTestImage);
			
			Starling.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, HandleKeyDown);
		}
		
		private function HandleKeyDown(e:KeyboardEvent):void 
		{
			SelectAnim(mTestImage, 1000);
		}
		
		private function SelectAnim(image:Image, duration:Number):void 
		{
			mCurIdx = (mCurIdx + 1) % mAnims.length;
			
			var curFunc:Function = mAnims[mCurIdx];
			var testAnim:Tween = curFunc(image, duration);
			
			Starling.juggler.add(testAnim);
		}
	}

}