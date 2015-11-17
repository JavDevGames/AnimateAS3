package animations.rotatingentrances 
{
	import animations.AnimateTweenUtils;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class AnimRotatingEntrances 
	{
		public static function RotateIn(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var rotations:Vector.<Number> = new <Number>[-200 * AnimateTweenUtils.DEG_TO_RAD, 0];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = target.width/2;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function RotateInDownLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var rotations:Vector.<Number> = new <Number>[-45 * AnimateTweenUtils.DEG_TO_RAD, 0];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = 0;
			target.pivotY = target.height / 2;
			
			return tween;
		}
		
		public static function RotateInDownRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var rotations:Vector.<Number> = new <Number>[45 * AnimateTweenUtils.DEG_TO_RAD, 0];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = target.width;
			target.pivotY = target.height;
			
			return tween;
		}
		
		public static function RotateInUpLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var rotations:Vector.<Number> = new <Number>[45 * AnimateTweenUtils.DEG_TO_RAD, 0];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = 0;
			target.pivotY = target.height;
			
			return tween;
		}
		
		public static function RotateInUpRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			var rotations:Vector.<Number> = new <Number>[-90 * AnimateTweenUtils.DEG_TO_RAD, 0];
			
			var tween:Tween = AnimateTweenUtils.ConfigureTween(target, duration, timing, null, null, opacities, rotations);
			
			target.pivotX = target.width;
			target.pivotY = target.height;
			
			return tween;
		}
	}

}