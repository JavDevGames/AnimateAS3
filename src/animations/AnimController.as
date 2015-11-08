package animations 
{
	/**
	 * ...
	 * @author Javier
	 */
	public class AnimController 
	{
		private var mAnimObjects:Vector.<AnimObject>;
		
		public function AnimController() 
		{
			mAnimObjects = new Vector.<AnimObject>;
		}
		
		public function AddAnimObject(animation:AnimObject):void
		{
			mAnimObjects.push(animation);
			
		}
		
		public function Update(time:Number):void
		{
			var i:int;
			
			for (i = 0; i < mAnimObjects.length; ++i)
			{
				mAnimObjects[i].Update(time);
			}
		}
		
	}

}