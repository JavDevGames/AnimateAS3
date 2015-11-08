package animations.bouncingexits 
{
	import animations.AnimObject;
	import animations.KeyFrame;
	import transforms.Transforms;
	/**
	 * ...
	 * @author Javier
	 */
	public class BouncingExits 
	{
		public static function BounceOut():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Scale, 0.9,0.9);
			
			keyFrame = animObject.AddKeyFrame(50);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Scale, 1.1,1.1);
			
			keyFrame = animObject.AddKeyFrame(55);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Scale, 1.1, 1.1);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Scale, 0.3,0.3);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Scale, 0.3,0.3);
			
			return animObject;
		}
		
		public static function BounceOutDown():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Translate, 0, 10, 0);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0, -20, 0);
			
			keyFrame = animObject.AddKeyFrame(45);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0,-20,0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 0,500,0);
			
			return animObject;
		}
		
		public static function BounceOutLeft():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 20, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, -500, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, -500,0,0);
			
			return animObject;
		}
		
		public static function BounceOutRight():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			keyFrame = animObject.AddKeyFrame(20);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, -20, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 500, 0, 0);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 500,0,0);
			
			return animObject;
		}
		
		public static function BounceOutUp():AnimObject
		{
			var animObject:AnimObject = new AnimObject();
			var keyFrame:KeyFrame;
			
			keyFrame = animObject.AddKeyFrame(0);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0,0,0);
			
			keyFrame = animObject.AddKeyFrame(40);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0, 20, 0);
			
			keyFrame = animObject.AddKeyFrame(45);
			keyFrame.AddConfig(Transforms.Opacity, 1);
			keyFrame.AddConfig(Transforms.Translate, 0, 20, 0);
			
			keyFrame = animObject.AddKeyFrame(90);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 0, -500, 0);
			
			keyFrame = animObject.AddKeyFrame(100);
			keyFrame.AddConfig(Transforms.Opacity, 0);
			keyFrame.AddConfig(Transforms.Translate, 0,500,0);
			
			return animObject;
		}
		
	}
}