package transforms 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.utils.getTimer;
	/**
	 * ...
	 * @author Javier
	 */
	public class Transforms 
	{
		private static var HELPER_MATRIX:Matrix = new Matrix();
		
		public static function CubicBezier(p1x:Number, p1y:Number, p2x:Number, p2y:Number, time:Number):Number
		{
			var invT3:Number = Math.pow(1 - time, 3);
			var invT2:Number = Math.pow(1 - time, 2);
			var invT:Number = 1 - time;
			var t2:Number = time * time;
			var t3:Number = t2 * time;
		
			//(1-t)^3 P0 + 3(1-t)^2 t P1 + 3(1-t) t^2 P2 + t^3 P3
			//out.x = (invT3 * 0) + 3 * (invT2) * t * p1x + 3 * (invT) * t2 * p2x + t3 * 1;
			var posY:Number = (invT3 * 0) + 3 * (invT2) * time * p1y + 3 * (invT) * t2 * p2y + t3 * 1;
			
			return posY;
		}
		
		public static function Translate(x:Number, y:Number, z:Number, t:Number, target:Sprite):void
		{
			var diffX:Number = x - target.x;
			target.x += (diffX * t);
			
			var diffY:Number = y - target.y;
			target.y += (diffY * t);
			
			var diffZ:Number = z - target.z;
			target.z += (diffZ * t);
		}
		
		public static function Opacity(val:Number, t:Number, target:Sprite):void
		{
			var diff:Number = val - target.alpha;
			target.alpha += (diff * t);
			
			if (t == 1)
			{
				target.alpha = val;
			}
		}
		
		public static function Skew(skewX:Number, skewY:Number, t:Number, target:Sprite):void
		{
			var targetMat:Matrix = target.transform.matrix;
			
			var skewXRad:Number = skewX * (Math.PI / 180);
			var skewYRad:Number = skewY * (Math.PI / 180);
			
			var diffX:Number = skewXRad - targetMat.b;
			var diffY:Number = skewYRad - targetMat.c;
			
			//HELPER_MATRIX.setTo(targetMat.a, targetMat.b, targetMat.c, targetMat.d, targetMat.tx, targetMat.ty);
			HELPER_MATRIX.identity();
			HELPER_MATRIX.b = targetMat.b + Math.tan(diffX);
			HELPER_MATRIX.c = targetMat.c + Math.tan(diffY);
			HELPER_MATRIX.concat(targetMat);
			
			target.transform.matrix = HELPER_MATRIX;
		}
		
		public static function Scale(scaleX:Number, scaleY:Number, t:Number, target:Sprite):void
		{
			var diffX:Number = scaleX - target.scaleX;
			var diffY:Number = scaleY - target.scaleY;
			
			var prevW:Number = target.width;
			var prevH:Number = target.height;
			
			target.scaleX = target.scaleX + (diffX * t);
			target.scaleY = target.scaleY + (diffY * t);
			
			var moveX:Number = prevW - target.width;
			var moveY:Number = prevH - target.height;
			
			target.x += moveX / 2;
			target.y += moveY / 2;
		}
		
		public static function Rotate(deg:Number, t:Number, target:Sprite):void
		{
			var diffR:Number = deg - target.rotation;
			target.rotation += (diffR * t);
		}
	}

}