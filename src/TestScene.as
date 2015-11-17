package 
{
	import animations.attentionseekers.AnimAttentionSeekers;
	import animations.bouncingentrances.AnimBouncingEntrances;
	import animations.bouncingexits.AnimBouncingExits;
	import animations.fadingentrances.AnimFadeInEntrances;
	import animations.fadingexits.AnimFadingExits;
	import animations.rotatingentrances.AnimRotatingEntrances;
	import animations.rotatingexits.AnimRotatingExits;
	import animations.slidingentrances.AnimSlidingEntrances;
	import animations.slidingexits.AnimSlidingExits;
	import animations.zoomingentrances.AnimZoomingEntrances;
	import animations.zoomingexits.AnimZoomingExits;
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
			
			mAnims = new <Function>[AnimAttentionSeekers.Bounce, AnimAttentionSeekers.Flash, AnimAttentionSeekers.Flash, AnimAttentionSeekers.Pulse, AnimAttentionSeekers.RubberBand, AnimAttentionSeekers.Shake,
									AnimAttentionSeekers.Swing, AnimAttentionSeekers.Tada, AnimAttentionSeekers.Wobble,
									AnimBouncingEntrances.BounceIn, AnimBouncingEntrances.BounceInDown, AnimBouncingEntrances.BounceInLeft, AnimBouncingEntrances.BounceInRight, AnimBouncingEntrances.BounceInUp,
									AnimBouncingExits.BounceOut, AnimBouncingExits.BounceOutDown, AnimBouncingExits.BounceOutLeft, AnimBouncingExits.BounceOutRight, AnimBouncingExits.BounceOutUp,
									AnimFadeInEntrances.FadeIn, AnimFadeInEntrances.FadeInDown, AnimFadeInEntrances.FadeInDownBig, AnimFadeInEntrances.FadeInLeft, AnimFadeInEntrances.FadeInLeftBig, AnimFadeInEntrances.FadeInRight,
									AnimFadeInEntrances.FadeInRightBig, AnimFadeInEntrances.FadeInUp, AnimFadeInEntrances.FadeInUpBig,
									AnimFadingExits.FadeOut, AnimFadingExits.FadeOutDown, AnimFadingExits.FadeOutDownBig, AnimFadingExits.FadeOutLeft, AnimFadingExits.FadeOutLeftBig, AnimFadingExits.FadeOutRight, AnimFadingExits.FadeOutRightBig,
									AnimFadingExits.FadeOutUp, AnimFadingExits.FadeOutUpBig,
									AnimRotatingEntrances.RotateIn, AnimRotatingEntrances.RotateInDownLeft, AnimRotatingEntrances.RotateInDownRight, AnimRotatingEntrances.RotateInUpLeft, AnimRotatingEntrances.RotateInUpRight,
									AnimRotatingExits.RotateOut, AnimRotatingExits.RotateOutDownLeft, AnimRotatingExits.RotateOutDownRight, AnimRotatingExits.RotateOutUpLeft, AnimRotatingExits.RotateOutUpRight,
									AnimSlidingEntrances.SlideInDown, AnimSlidingEntrances.SlideInLeft, AnimSlidingEntrances.SlideInRight, AnimSlidingEntrances.SlideInUp,
									AnimSlidingExits.SlideOutDown, AnimSlidingExits.SlideOutLeft, AnimSlidingExits.SlideOutRight, AnimSlidingExits.SlideOutUp,
									AnimZoomingEntrances.ZoomIn, AnimZoomingEntrances.ZoomInDown, AnimZoomingEntrances.ZoomInLeft, AnimZoomingEntrances.ZoomInRight, AnimZoomingEntrances.ZoomInUp,
									AnimZoomingExits.ZoomOut, AnimZoomingExits.ZoomOutDown, AnimZoomingExits.ZoomOutLeft, AnimZoomingExits.ZoomOutRight, AnimZoomingExits.ZoomOutUp];
			
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