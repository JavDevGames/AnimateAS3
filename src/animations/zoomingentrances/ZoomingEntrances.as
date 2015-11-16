package animations.zoomingentrances 
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
	public class ZoomingEntrances
	{
		public static function ZoomIn(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.5];
			var scales:Vector.<Point> = new <Point>[new Point(0.3, 0.3), new Point(1,1)];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Point> = new <Point>[new Point(0.1,0.1), new Point(0.475,0.475), new Point(1,1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y-100), new Point(target.x,target.y+60),new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Point> = new <Point>[new Point(0.1,0.1), new Point(0.475, 0.475), new Point(1,1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y+100), new Point(target.x,target.y-60),new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Point> = new <Point>[new Point(0.1,0.1), new Point(0.475, 0.475), new Point(1,1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x-100, target.y), new Point(target.x+10,target.y),new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Point> = new <Point>[new Point(0.1,0.1), new Point(0.475,0.475), new Point(1,1)];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+100, target.y), new Point(target.x-10,target.y),new Point(target.x,target.y)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
	}

}