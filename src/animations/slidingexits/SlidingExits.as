package animations.slidingexits 
{
	import animations.TweenUtil;
	import flash.geom.Point;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class SlidingExits
	{
		public static function SlideOutDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x,target.y+100)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function SlideOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x,target.y-100)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function SlideOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x-100,target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function SlideOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x+100,target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
	}

}