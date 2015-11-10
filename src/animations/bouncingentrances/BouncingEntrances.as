package animations.bouncingentrances 
{
	import flash.geom.Point;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	/**
	 * ...
	 * @author Javier
	 */
	public class BouncingEntrances 
	{
		public static function BounceIn(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0.2,0.2,0.2,0.2,0.2,0.2];
			var opacities:Vector.<Number> = new <Number>[
														0,
														1,
														1,
														1,
														1,
														1
													];
			var scales:Vector.<Number> = new <Number>[
														0.3,
														1.1,
														0.9,
														1.03,
														0.97,
														1
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.scaleTo(scales[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.scaleTo(scales[i]);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[
															0,
															1,
															1,
															1
													];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y-1500),
														new Point(target.x, target.y+25),
														new Point(target.x, target.y-10),
														new Point(target.x, target.y+5)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x,positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x,positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[
															0,
															1,
															1,
															1
													];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y+1500),
														new Point(target.x, target.y-25),
														new Point(target.x, target.y+10),
														new Point(target.x, target.y-5)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x,positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x,positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[
															0,
															1,
															1,
															1
													];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x-1500, target.y),
														new Point(target.x+25, target.y),
														new Point(target.x-10, target.y),
														new Point(target.x+5, target.y)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x,positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x,positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.6,0.15,0.15];
			var opacities:Vector.<Number> = new <Number>[
															0,
															1,
															1,
															1
													];
			
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x+1500, target.y),
														new Point(target.x-25, target.y),
														new Point(target.x+10, target.y),
														new Point(target.x-5, target.y)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x,positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x,positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
	}
}