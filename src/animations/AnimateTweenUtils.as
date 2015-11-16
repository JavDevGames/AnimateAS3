package animations 
{
	import flash.geom.Point;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class AnimateTweenUtils 
	{
		static public const SKEW_X:String = "skewX";
		static public const SKEW_Y:String = "skewY";
		static public const DEG_TO_RAD:Number = Math.PI / 180;
		static public const SCALE_X:String = "scaleX";
		static public const SCALE_Y:String = "scaleY";
		
		public static function ConfigureTween(target:DisplayObject, duration:Number, timing:Vector.<Number>, positions:Vector.<Point>=null, scales:Vector.<Point>=null, opacities:Vector.<Number>=null, rotations:Vector.<Number>=null,skews:Vector.<Point> = null):Tween
		{
			var i:int;
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			
			if (positions && positions.length)
			{
				rootTween.moveTo(positions[0].x, positions[0].y);
			}
			
			if (scales && scales.length)
			{
				rootTween.animate(SCALE_X, scales[0].x);
				rootTween.animate(SCALE_Y, scales[0].y);
			}
			
			if (opacities && opacities.length)
			{
				rootTween.fadeTo(opacities[0]);
			}
			
			if (rotations && rotations.length)
			{
				rootTween.rotateTo(rotations[0]);				
			}
			
			if (skews && skews.length)
			{
				rootTween.animate(SKEW_X, skews[0].x);
				rootTween.animate(SKEW_Y, skews[0].y);
			}
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				
				if (positions && positions.length)
				{
					nextTween.moveTo(positions[i].x, positions[i].y);
				}
				
				if (scales && scales.length)
				{
					nextTween.animate(SCALE_X, scales[i].x);
					nextTween.animate(SCALE_Y, scales[i].y);
				}
				
				if (opacities && opacities.length)
				{
					nextTween.fadeTo(opacities[i]);
				}
				
				if (rotations && rotations.length)
				{
					nextTween.rotateTo(rotations[i]);				
				}
				
				if (skews && skews.length)
				{
					nextTween.animate(SKEW_X, skews[i].x);
					nextTween.animate(SKEW_Y, skews[i].y);
				}
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
	}

}