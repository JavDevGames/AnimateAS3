package animations.bouncingentrances 
{
	import animations.AnimObject;
	import animations.KeyFrame;
	import transforms.Transforms;
	/**
	 * ...
	 * @author Javier
	 */
	public class BouncingEntrances 
	{
		
		public static function BounceIn():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Scale, 0.3,0.3);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Scale, 0.9,0.9);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Scale, 1.03,1.03);
			
			keyFrame = animObject.AddKeyFrame(80);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Scale, 0.97,0.97);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Scale, 1,1);
			
			return animObject;
		}
		
		public static function BounceInDown():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 0,-1500,0);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0,25,0);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0,-10,0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, 5,0);
			
			return animObject;
		}
		
		public static function BounceInLeft():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, -3000,0,0);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 25,0,0);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, -10,0,0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 5, 0, 0);
			
			return animObject;
		}
		
		public static function BounceInRight():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 3000,0,0);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, -25,0,0);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 10,0,0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, -5, 0, 0);
			
			return animObject;
		}
		
		public static function BounceInUp():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 0,3000,0);
			
			keyFrame = animObject.AddKeyFrame(60);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0,-20,0);
			
			keyFrame = animObject.AddKeyFrame(75);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0,10,0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0, -5, 0);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddAnimFunction(Transforms.CubicBezier, 0.215, 0.610, 0.355, 1.000);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			return animObject;
		}
	}

}