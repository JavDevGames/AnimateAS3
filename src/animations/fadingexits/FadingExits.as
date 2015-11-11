package animations.fadingexits
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
	public class FadingExits
	{
		
		public static function FadeOut(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities);
			return tween;
		}
		
		public static function FadeOutDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x, target.y+500)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeOutDownBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x, target.y+2000)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x-1000, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeOutLeftBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x-2000, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x+1000, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeOutRightBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x+2000, target.y)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
		
		public static function FadeOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x, target.y-500)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
	
		public static function FadeOutUpBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x, target.y-2000)];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, positions, null, opacities);
			return tween;
		}
	
	}

}