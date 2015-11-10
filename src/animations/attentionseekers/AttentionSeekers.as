package animations.attentionseekers 
{
	import animations.AnimObject;
	import animations.KeyFrame;
	import flash.display.Sprite;
	import flash.events.SecurityErrorEvent;
	import flash.geom.Point;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	import starling.display.Image;
	import transforms.Transforms;
	/**
	 * ...
	 * @author Javier
	 */
	public class AttentionSeekers 
	{
		static public const SKEW_X:String = "skewX";
		static public const SKEW_Y:String = "skewY";
		static public const DEG_TO_RAD:Number = Math.PI / 180;
		static public const SCALE_X:String = "scaleX";
		static public const SCALE_Y:String = "scaleY";
		
		public static function Bounce(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.2, 0.2, 0.03, 0.10, 0.17, 0.1,0.1, 0.1];
			var positions:Vector.<Point> = new <Point>[ 	
															new Point(target.x, target.y),
															new Point(target.x, target.y),
															new Point(target.x, target.y-30),
															new Point(target.x, target.y-30),
															new Point(target.x, target.y),
															new Point(target.x, target.y-15),
															new Point(target.x, target.y),
															new Point(target.x, target.y-4),
															new Point(target.x, target.y)
														];
														
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[i].x, positions[i].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;			
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function Flash(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.25, 0.25, 0.25, 0.25];
			var fades:Vector.<int> = new <int>[0, 1,0,1,1];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function Jello(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.11, 0.11, 0.11, 0.11, 0.11,0.11, 0.11, 0.11, 0.22];
			var skews:Vector.<Point> = new <Point>[	
														new Point(0,0),
														new Point(0,0),
														new Point(-12.5,-12.5),
														new Point(6.25,6.25),
														new Point(-3.125,-3.125),
														new Point(1.5625,1.5625),
														new Point(-0.78125,-0.78125),
														new Point(0.390625,0.390625),
														new Point(-0.1953125,-0.1953125),
														new Point(0, 0)
												];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.animate(SKEW_X, skews[0].x * DEG_TO_RAD);
			rootTween.animate(SKEW_Y, skews[0].y * DEG_TO_RAD);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);
				
				nextTween.animate(SKEW_X, skews[i].x * DEG_TO_RAD);
				nextTween.animate(SKEW_Y, skews[i].y * DEG_TO_RAD);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotX = target.height / 2;
			
			return rootTween;
		}
		
		public static function Pulse(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.5, 0.5];
			var scales:Vector.<Number> = new <Number>[1, 1.05, 1];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.scaleTo(scales[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.scaleTo(scales[i]);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
			
			/*
			var animObject:AnimObject = new AnimObject(target);
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Scale, 1.05,1.05);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			return animObject;
			*/
		}
		
		public static function RubberBand(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.3, 0.1, 0.1, 0.15, 0.1, 0.25];
			var scales:Vector.<Point> = new <Point>[
														new Point(1, 1),
														new Point(1.25, 0.75),
														new Point(0.75, 1.25),
														new Point(1.15, 0.85),
														new Point(0.95, 1.05),
														new Point(1.05, 0.95),
														new Point(1, 1)														
													];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.animate(SCALE_X,scales[0].x);
			rootTween.animate(SCALE_Y,scales[0].y);				
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.animate(SCALE_X,scales[i].x);
				nextTween.animate(SCALE_Y,scales[i].y);				
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function Shake(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x, target.y),
													];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x,positions[0].y);				
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.moveTo(positions[i].x, positions[i].y);				
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function Swing(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.2,0.2,0.2,0.2];
			var angles:Vector.<Number> = new <Number>[
														0,
														15 * DEG_TO_RAD,
														-10 * DEG_TO_RAD,
														5 * DEG_TO_RAD,
														-5 * DEG_TO_RAD,
														0
													];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.rotateTo(angles[0]);				
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.rotateTo(angles[i]);				
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function Tada(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1];
			var scales:Vector.<Number> = new <Number>[
														1,
														0.9,
														0.9,
														1.1,
														1.1,
														1.1,
														1.1,
														1.1,
														1.1,
														1.1,
														1.1
													];
			var angles:Vector.<Number> = new <Number>[
														0,
														-3 * DEG_TO_RAD,
														-3 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														-3 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														-3 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														-3* DEG_TO_RAD,
														3 * DEG_TO_RAD,
														0
													];
			
													
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.rotateTo(angles[0]);				
			rootTween.scaleTo(scales[0]);				
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.rotateTo(angles[i]);				
				nextTween.scaleTo(scales[i]);				
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function Wobble(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0.15,0.15,0.15,0.15,0.15,0.15,0.15];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x-25, target.y),
														new Point(target.x+20, target.y),
														new Point(target.x-15, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-5, target.y),
														new Point(target.x, target.y)
													];
			var angles:Vector.<Number> = new <Number>[
														0,
														-5 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														2 * DEG_TO_RAD,
														-1 * DEG_TO_RAD,
														0
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.rotateTo(angles[0]);				
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.rotateTo(angles[i]);				
				nextTween.moveTo(positions[i].x, positions[i].y);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
	}
}