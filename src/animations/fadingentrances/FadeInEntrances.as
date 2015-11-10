package animations.fadingentrances
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
	public class FadeInEntrances
	{
		
		public static function FadeIn(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y-500), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInDownBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,-2000), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x-1000,target.y), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInLeftBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x-2000,target.y), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+1000,target.y), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInRightBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+2000,target.y), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
		
		public static function FadeInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y+500), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
	
		public static function FadeInUpBig(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.9];
			var fades:Vector.<int> = new <int>[0, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y+2000), new Point(target.x, target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.fadeTo(fades[0]);
			rootTween.moveTo(positions[0].x, positions[0].y);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.fadeTo(fades[i]);
				nextTween.moveTo(positions[i].x, positions[i].y);
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			return rootTween;
		}
	
	}

}