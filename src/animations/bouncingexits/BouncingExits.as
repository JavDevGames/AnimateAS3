package animations.bouncingexits 
{
	import animations.AnimObject;
	import animations.KeyFrame;
	import flash.display.Sprite;
	import flash.geom.Point;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.display.DisplayObject;
	import transforms.Transforms;
	/**
	 * ...
	 * @author Javier
	 */
	public class BouncingExits
	{
		public static function BounceOut(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.3,0.05,0.35,0.1];
			var opacities:Vector.<Number> = new <Number>[
															1,
															1,
															1,
															1,
															0,
															0
													];
			var scales:Vector.<Number> = new <Number>[
															1,
															0.9,
															1.1,
															1.1,
															0.3,
															0.3
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
		
		public static function BounceOutDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.2,0.05,0.45];
			var opacities:Vector.<Number> = new <Number>[
															1,
															1,
															1,
															1,
															0
													];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x, target.y+10),
														new Point(target.x, target.y-20),
														new Point(target.x, target.y-20),
														new Point(target.x, target.y+500)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x, positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.4,0.05,0.45];
			var opacities:Vector.<Number> = new <Number>[
															1,
															1,
															1,
															1,
															0
													];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x, target.y-10),
														new Point(target.x, target.y+20),
														new Point(target.x, target.y-500)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x, positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.7,0.1];
			var opacities:Vector.<Number> = new <Number>[
															1,
															1,
															1,
															1														
													];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x+20, target.y),
														new Point(target.x-500, target.y),
														new Point(target.x-500, target.y)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x, positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
		public static function BounceOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0,0.2,0.7,0.1];
			var opacities:Vector.<Number> = new <Number>[
															1,
															1,
															1,
															1														
													];
			var positions:Vector.<Point> = new <Point>[
														new Point(target.x, target.y),
														new Point(target.x-20, target.y),
														new Point(target.x+500, target.y),
														new Point(target.x+500, target.y)
													];
													
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(opacities[0]);				
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * timing[i], Transitions.EASE_IN);				
				nextTween.fadeTo(opacities[i]);				
				nextTween.moveTo(positions[i].x, positions[i].y);
				
				curTween.nextTween = nextTween;
				curTween = nextTween;
			}

			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;

			return rootTween;
		}
		
	}
}