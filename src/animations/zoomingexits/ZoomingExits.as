package animations.zoomingexits 
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
	public class ZoomingExits
	{
		public static function ZoomOut(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.5];
			var scales:Vector.<Point> = new <Point>[new Point(1,1), new Point(0.3,0.3)];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4,0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Point> = new <Point>[new Point(1,1), new Point(0.475,0.475), new Point(1,1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x, target.y+60), new Point(target.x,target.y-500)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomOutDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4, 0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Point> = new <Point>[new Point(1,1),new Point(0.475,0.475), new Point(0.1, 0.1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y),new Point(target.x, target.y-60), new Point(target.x,target.y+500)];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4,0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Point> = new <Point>[new Point(1,1), new Point(0.475, 0.475), new Point(0.1,0.1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x+42, target.y), new Point(target.x-500,target.y)];			
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function ZoomOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4,0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Point> = new <Point>[new Point(1,1), new Point(0.475,0.475), new Point(0.1,0.1)]
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x-42, target.y), new Point(target.x+500,target.y)];			
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, positions, scales, opacities);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
	}

}