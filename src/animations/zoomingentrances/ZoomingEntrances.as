package animations.zoomingentrances 
{
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
			var scales:Vector.<Number> = new <Number>[0.3, 1];
			var opacities:Vector.<Number> = new <Number>[0, 1];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.scaleTo(scales[0]);
			rootTween.fadeTo(opacities[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				nextTween.scaleTo(scales[i]);
				nextTween.fadeTo(opacities[i]);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function ZoomInDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Number> = new <Number>[0.1, 0.475, 1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y-100), new Point(target.x,target.y+60),new Point(target.x,target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			rootTween.scaleTo(scales[0]);
			rootTween.fadeTo(opacities[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				
				nextTween.moveTo(positions[i].x, positions[i].y);
				nextTween.scaleTo(scales[i]);
				nextTween.fadeTo(opacities[i]);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function ZoomInUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Number> = new <Number>[0.1, 0.475, 1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y+100), new Point(target.x,target.y-60),new Point(target.x,target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			rootTween.scaleTo(scales[0]);
			rootTween.fadeTo(opacities[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				
				nextTween.moveTo(positions[i].x, positions[i].y);
				nextTween.scaleTo(scales[i]);
				nextTween.fadeTo(opacities[i]);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function ZoomInLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Number> = new <Number>[0.1, 0.475, 1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x-100, target.y), new Point(target.x+10,target.y),new Point(target.x,target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			rootTween.scaleTo(scales[0]);
			rootTween.fadeTo(opacities[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				
				nextTween.moveTo(positions[i].x, positions[i].y);
				nextTween.scaleTo(scales[i]);
				nextTween.fadeTo(opacities[i]);
				
				curTween.nextTween = nextTween;
				
				//move it forward
				curTween = nextTween;
			}
			
			target.pivotX = target.width / 2;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		public static function ZoomInRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.6,0.4];
			var opacities:Vector.<Number> = new <Number>[0,1,1];
			var scales:Vector.<Number> = new <Number>[0.1, 0.475, 1];
			var positions:Vector.<Point> = new <Point>[new Point(target.x+100, target.y), new Point(target.x-10,target.y),new Point(target.x,target.y)];
			
			var rootTween:Tween = new Tween(target, duration * timing[0], Transitions.EASE_IN);
			rootTween.moveTo(positions[0].x, positions[0].y);
			rootTween.scaleTo(scales[0]);
			rootTween.fadeTo(opacities[0]);
			
			var nextTween:Tween;
			var curTween:Tween = rootTween;
			
			for (i = 1; i < timing.length; ++i)
			{
				nextTween = new Tween(target, duration * (timing[i]), Transitions.EASE_IN);
				
				nextTween.moveTo(positions[i].x, positions[i].y);
				nextTween.scaleTo(scales[i]);
				nextTween.fadeTo(opacities[i]);
				
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