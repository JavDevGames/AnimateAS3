package animations.zoomingexits 
{
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
			var scales:Vector.<Number> = new <Number>[1, 0.3];
			var opacities:Vector.<Number> = new <Number>[1, 0];
			
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
		
		public static function ZoomOutUp(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4,0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Number> = new <Number>[1, 0.475, 1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x, target.y+60), new Point(target.x,target.y-500)];
			
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
			target.pivotY = target.height;
			
			return rootTween;
		}
		
		public static function ZoomOutDown(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4, 0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Number> = new <Number>[1,0.475, 0.1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x, target.y),new Point(target.x, target.y-60), new Point(target.x,target.y+500)];
			
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
		
		public static function ZoomOutLeft(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4,0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Number> = new <Number>[1, 0.475, 0.1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x+42, target.y), new Point(target.x-500,target.y)];			
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
			
			target.pivotX = 0;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
		
		
		
		public static function ZoomOutRight(target:DisplayObject, duration:Number):Tween
		{
			var i:int;
			var timing:Vector.<Number> = new <Number>[0, 0.4,0.6];
			var opacities:Vector.<Number> = new <Number>[1,1,0];
			var scales:Vector.<Number> = new <Number>[1, 0.475, 0.1]
			var positions:Vector.<Point> = new <Point>[new Point(target.x,target.y), new Point(target.x-42, target.y), new Point(target.x+500,target.y)];			
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
			
			target.pivotX = target.width;
			target.pivotY = target.height / 2;
			
			return rootTween;
		}
	}

}