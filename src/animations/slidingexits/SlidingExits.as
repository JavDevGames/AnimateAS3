package animations.slidingexits 
{
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
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function SlideOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x,target.y-100)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function SlideOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x-100,target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function SlideOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y), new Point(target.x+100,target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
	}

}