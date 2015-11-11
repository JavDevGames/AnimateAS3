package animations.fadingentrances
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
	public class FadeInEntrances
	{
		
		public static function FadeIn(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities);
			
			return tween;
		}
		
		public static function FadeInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y-500), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeInDownBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,-2000), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x-1000,target.y), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeInLeftBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x-2000,target.y), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+1000,target.y), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeInRightBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+2000,target.y), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y+500), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
	
		public static function FadeInUpBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y+2000), new Point(target.x, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
	
	}

}