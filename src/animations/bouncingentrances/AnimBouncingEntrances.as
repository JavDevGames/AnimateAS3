package animations.bouncingentrances 
{
	import animations.AnimateTweenUtils;
	import flash.geom.Point;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class AnimBouncingEntrances 
	{
		public static function BounceIn(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0.2,0.2,0.2,0.2,0.2,0.2];
			var opacities:Vector.<Number> = new <Number>[0, 1, 1, 1, 1, 1 ];
			var scales:Vector.<Point> = new <Point>[
														new Point(0.3,0.3),
														new Point(1.1,1.1),
														new Point(0.9,0.9),
														new Point(1.03,1.03),
														new Point(0.97,0.97),
														new Point(1,1)
													];
													
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, scales, opacities);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function BounceInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[0, 1, 1, 1];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y-1500),
														new Point(target.x, target.y+25),
														new Point(target.x, target.y-10),
														new Point(target.x, target.y+5)
													];
													
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function BounceInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[0, 1, 1, 1];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y+1500),
														new Point(target.x, target.y-25),
														new Point(target.x, target.y+10),
														new Point(target.x, target.y-5)
													];
													
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function BounceInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[0, 1, 1, 1];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x-1500, target.y),
														new Point(target.x+25, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x+5, target.y)
													];
													
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function BounceInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[0, 1, 1, 1];			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x+1500, target.y),
														new Point(target.x-25, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-5, target.y)
													];
													
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
	}
}