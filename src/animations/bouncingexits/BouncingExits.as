package animations.bouncingexits 
{
	import animations.TweenUtil;
	import flash.geom.Point;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class BouncingExits
	{
		public static function BounceOut(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.3,0.05,0.35,0.1];
			var opacities:Vector.<Number> = new <Number>[1, 1, 1, 1, 0, 0];
			var scales:Vector.<Point> = new <Point>[
														new Point(1, 1),
														new Point(0.9, 0.9),
														new Point(1.1, 1.1),
														new Point(1.1, 1.1),
														new Point(0.3, 0.3),
														new Point(0.3, 0.3)
														];
													
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, scales, opacities);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function BounceOutDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.2,0.05,0.45];
			var opacities:Vector.<Number> = new <Number>[1, 1, 1, 1, 0];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x, target.y+10),
														new Point(target.x, target.y-20),
														new Point(target.x, target.y-20),
														new Point(target.x, target.y+500)
													];
													
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function BounceOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.4,0.05,0.45];
			var opacities:Vector.<Number> = new <Number>[1, 1, 1, 1, 0];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x, target.y-10),
														new Point(target.x, target.y+20),
														new Point(target.x, target.y-500)
													];
													
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function BounceOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.7,0.1];
			var opacities:Vector.<Number> = new <Number>[1, 1, 1, 1];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x+20, target.y),
														new Point(target.x-500, target.y),
														new Point(target.x-500, target.y)
													];
													
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function BounceOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.7,0.1];
			var opacities:Vector.<Number> = new <Number>[1, 1, 1, 1];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x-20, target.y),
														new Point(target.x+500, target.y),
														new Point(target.x+500, target.y)
													];
													
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
	}
}