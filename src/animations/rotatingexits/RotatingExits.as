package animations.rotatingexits 
{
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
			var fades:Vector.<int> = new <int>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,200 * DEG_TO_RAD];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.rotateTo(rotations[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.rotateTo(rotations[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function RotateOutDownLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,45 * DEG_TO_RAD];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.rotateTo(rotations[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.rotateTo(rotations[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = 0;
			target.pivotY = target.height;
			
			return rootTween;
		}
		
		public static function RotateOutDownRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,45 * DEG_TO_RAD];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.rotateTo(rotations[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.rotateTo(rotations[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width;
			target.pivotY = target.height;
			
			return rootTween;
		}
		
		public static function RotateOutUpLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,-45 * DEG_TO_RAD, 0];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.rotateTo(rotations[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.rotateTo(rotations[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = 0;
			target.pivotY = target.height;
			
			return rootTween;
		}
		
		public static function RotateOutUpRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[1, 0];
			var rotations:Vector.<Number> = new <Number>[0,90 * DEG_TO_RAD];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.rotateTo(rotations[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.rotateTo(rotations[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width;
			target.pivotY = target.height;
			
			return rootTween;
		}
	}

}