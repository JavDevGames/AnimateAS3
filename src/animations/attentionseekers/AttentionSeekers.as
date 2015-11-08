package animations.attentionseekers 
{
	import animations.AnimObject;
	import animations.KeyFrame;
	import flash.geom.Point;
	import transforms.Transforms;
	/**
	 * ...
	 * @author Javier
	 */
	public class AttentionSeekers 
	{
		
		public static function Bounce():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.755, 0.050, 0.855, 0.060);
			keyFrame.AddConfig(Transforms.Translate, 0, -30, 0);
			
			keyFrame = animObject.AddKeyFrame(43);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.755, 0.050, 0.855, 0.060);
			keyFrame.AddConfig(Transforms.Translate, 0, -30, 0);
			
			keyFrame = animObject.AddKeyFrame(53);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(70);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.755, 0.050, 0.855, 0.060);
			keyFrame.AddConfig(Transforms.Translate, 0, -15, 0);
			
			keyFrame = animObject.AddKeyFrame(80);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Translate, 0, -4, 0);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, 0, 0);
			
			return animObject;
		}
		
		public static function Flash():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			
			keyFrame = animObject.AddKeyFrame(25);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			
			return animObject;
		}
		
		public static function Jello():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Skew, 0,0);
			
			keyFrame = animObject.AddKeyFrame(11.1);
			keyFrame.AddConfig(Transforms.Skew, 0,0);
			
			keyFrame = animObject.AddKeyFrame(22.2);
			keyFrame.AddConfig(Transforms.Skew, -12.5, -12.5);
			
			keyFrame = animObject.AddKeyFrame(33.3);
			keyFrame.AddConfig(Transforms.Skew, 6.25,6.25);
			
			keyFrame = animObject.AddKeyFrame(44.4);
			keyFrame.AddConfig(Transforms.Skew, -3.125,-3.125);
			
			keyFrame = animObject.AddKeyFrame(55.5);
			keyFrame.AddConfig(Transforms.Skew, 1.5625,1.5625);
			
			keyFrame = animObject.AddKeyFrame(66.6);
			keyFrame.AddConfig(Transforms.Skew, -0.78125,-0.78125);
			
			keyFrame = animObject.AddKeyFrame(77.7);
			keyFrame.AddConfig(Transforms.Skew, 0.390625,0.390625);
			
			keyFrame = animObject.AddKeyFrame(88.8);
			keyFrame.AddConfig(Transforms.Skew, -0.1953125,-0.1953125);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Skew, 0,0);
			
			return animObject;
		}
		
		public static function Pulse():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Scale, 1.05,1.05);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			return animObject;
		}
		
		public static function RubberBand():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			keyFrame = animObject.AddKeyFrame(30);
			keyFrame.AddConfig(Transforms.Scale, 1.25,0.75);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddConfig(Transforms.Scale, 0.75,1.25);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Scale, 1.15,0.85);
			
			keyFrame = animObject.AddKeyFrame(65);
			keyFrame.AddConfig(Transforms.Scale, 0.95,1.05);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddConfig(Transforms.Scale, 1.05,0.95);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			return animObject;
		}
		
		public static function Shake():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			keyFrame = animObject.AddKeyFrame(10);
			keyFrame.AddConfig(Transforms.Translate, -10,0,0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Translate, 10,0,0);
			
			keyFrame = animObject.AddKeyFrame(30);
			keyFrame.AddConfig(Transforms.Translate, -10,0,0);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddConfig(Transforms.Translate, 10,0,0);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Translate, -10,0,0);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddConfig(Transforms.Translate, 10,0,0);
			
			keyFrame = animObject.AddKeyFrame(70);
			keyFrame.AddConfig(Transforms.Translate, -10,0,0);
			
			keyFrame = animObject.AddKeyFrame(80);
			keyFrame.AddConfig(Transforms.Translate, 10,0,0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Translate, -10,0,0);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			return animObject;
		}
		
		public static function Swing():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Rotate, 0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Rotate, 15);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddConfig(Transforms.Rotate, -10);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddConfig(Transforms.Rotate, 5);
			
			keyFrame = animObject.AddKeyFrame(80);
			keyFrame.AddConfig(Transforms.Rotate, -5);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Rotate, 0);
			
			return animObject;
		}
		
		public static function Tada():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			keyFrame = animObject.AddKeyFrame(10);
			keyFrame.AddConfig(Transforms.Scale, 0.9,0.9);
			keyFrame.AddConfig(Transforms.Rotate, -3);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Scale, 0.9,0.9);
			keyFrame.AddConfig(Transforms.Rotate, -3);
			
			keyFrame = animObject.AddKeyFrame(30);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, 3);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, -3);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, 3);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, -3);
			
			keyFrame = animObject.AddKeyFrame(70);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, 3);
			
			keyFrame = animObject.AddKeyFrame(80);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, -3);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			keyFrame.AddConfig(Transforms.Rotate, 3);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			return animObject;
		}
		
		public static function Wobble():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			keyFrame = animObject.AddKeyFrame(15);
			keyFrame.AddConfig(Transforms.Translate, -25,0,0);
			keyFrame.AddConfig(Transforms.Rotate, -5);
			
			keyFrame = animObject.AddKeyFrame(30);
			keyFrame.AddConfig(Transforms.Translate, 20,0,0);
			keyFrame.AddConfig(Transforms.Rotate, 3);
			
			keyFrame = animObject.AddKeyFrame(45);
			keyFrame.AddConfig(Transforms.Translate, -15,0,0);
			keyFrame.AddConfig(Transforms.Rotate, 3);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddConfig(Transforms.Translate, 10,0,0);
			keyFrame.AddConfig(Transforms.Rotate, 2);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddConfig(Transforms.Translate, -5,0,0);
			keyFrame.AddConfig(Transforms.Rotate, -1);
			
			return animObject;
		}
		
	}
}