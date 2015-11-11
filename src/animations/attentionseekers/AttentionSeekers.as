package animations.attentionseekers 
{
	import animations.TweenUtil;
	import flash.geom.Point;
	import flash.sampler.NewObjectSample;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class AttentionSeekers 
	{
		public static function Bounce(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.2, 0.2, 0.03, 0.10, 0.17, 0.1,0.1, 0.1];
			var positions:Vector.<Point> = new <Point>[	new Point(target.x, target.y),new Point(target.x, target.y),new Point(target.x, target.y-30),new Point(target.x, target.y-30),new Point(target.x, target.y),
														new Point(target.x, target.y-15),new Point(target.x, target.y),new Point(target.x, target.y-4),new Point(target.x, target.y)];
														
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions);
			return tween;
		}
		
		public static function Flash(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.25, 0.25, 0.25, 0.25];
			var opacities:Vector.<Number> = new <Number>[0, 1, 0,1,1];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities);
			return tween;
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
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, null, null, skews);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function Pulse(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.5, 0.5];
			var scales:Vector.<Point> = new <Point>[new Point(1,1), new Point(1.05, 1.05), new Point(1,1)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, scales);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
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
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, scales);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
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
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function Swing(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.2,0.2,0.2,0.2];
			var rotations:Vector.<Number> = new <Number>[
														0,
														15 * DEG_TO_RAD,
														-10 * DEG_TO_RAD,
														5 * DEG_TO_RAD,
														-5 * DEG_TO_RAD,
														0
													];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, null, rotations);
			
			target.pivotX = target.width / 2;
			target.pivotX = target.height / 2;
			
			return tween;
		}
		
		public static function Tada(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1];
			var scales:Vector.<Point> = new <Point>[
														new Point(1,1),
														new Point(0.9,0.9),
														new Point(0.9,0.9),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
														new Point(1.1,1.1),
													];
													
			var rotations:Vector.<Number> = new <Number>[
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
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, scales, null, rotations);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
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
			var rotations:Vector.<Number> = new <Number>[
														0,
														-5 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														3 * DEG_TO_RAD,
														2 * DEG_TO_RAD,
														-1 * DEG_TO_RAD,
														0
													];
													
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, null, rotations);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
	}
}