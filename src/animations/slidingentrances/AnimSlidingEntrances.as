package animations.slidingentrances 
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
	public class AnimSlidingEntrances 
	{
		public static function SlideInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y-100), new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function SlideInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y-100), new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function SlideInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+100, target.y), new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function SlideInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x-100, target.y), new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
	}

}