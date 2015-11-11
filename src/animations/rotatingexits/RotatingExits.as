package animations.rotatingexits 
{
	import animations.TweenUtil;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class RotatingExits
	{
		static public const DEG_TO_RAD:Number = Math.PI / 180;
		
		public static function RotateOut(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,200 * DEG_TO_RAD];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function RotateOutDownLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,45 * DEG_TO_RAD];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = 0;
			target.pivotY = target.height;
			
			return tween;
		}
		
		public static function RotateOutDownRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,45 * DEG_TO_RAD];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = target.width;
			target.pivotY = target.height;
			
			return tween;
		}
		
		public static function RotateOutUpLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,-45 * DEG_TO_RAD, 0];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = 0;
			target.pivotY = target.height;
			
			return tween;
		}
		
		public static function RotateOutUpRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,90 * DEG_TO_RAD];
			
			var tween:Tween = TweenUtil.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = target.width;
			target.pivotY = target.height;
			
			return tween;
		}
	}

}