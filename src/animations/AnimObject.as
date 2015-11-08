package animations 
{
	import flash.display.Sprite;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Javier
	 */
	public class AnimObject 
	{
		private var mKeyFrames:Dictionary;
		private var mTarget:Sprite;
		
		private var mActiveKeyFrame:Number;
		private var mNextKeyFrame:Number;
		
		private var mDuration:Number;
		private var mKeyFrameDuration:Number;
		private var mFrameRate:Number;
		
		private var mElapsedTime:Number;
		private var mLastTime:Number;
		
		private static const STATE_ANIMATING:int = 0;
		private static const STATE_COMPLETE:int = 1;
		private var mState:int;
		
		public function AnimObject() 
		{
			mKeyFrames = new Dictionary;
			mDuration = 1000;
			mFrameRate = 60;
			mElapsedTime = 0;
			mLastTime = -1;
			mState = STATE_ANIMATING;
			UpdateActiveKeyFrame(0);
		}
		
		public function AddKeyFrame(value:Number):KeyFrame
		{
			mKeyFrames[value] = new KeyFrame();
			return mKeyFrames[value];
		}
		
		public function SetTarget(target:Sprite):void
		{
			mTarget = target;
		}
		
		public function Update(time:Number):void
		{
			if (mState == STATE_ANIMATING)
			{
				if (mLastTime == -1)
				{
					mLastTime = time;
				}
				
				var diff:Number = time - mLastTime;
				mElapsedTime += diff;
				
				UpdateActiveKeyFrame(mElapsedTime);
				
				var timeAsKeyFrame:Number = (mElapsedTime / mDuration) * 100;
				var progress:Number = (timeAsKeyFrame-mActiveKeyFrame) / mKeyFrameDuration;
				
				var active:KeyFrame = mKeyFrames[mActiveKeyFrame];
				var t:Number = Math.max(0, Math.min(progress, 1));
				
				active.Update(t, mTarget);
				
				mLastTime = time;
				
				if (mElapsedTime > mDuration)
				{
					mElapsedTime = 0;
					mLastTime = -1;
					mState = STATE_COMPLETE;
				}
			}
			else
			{
				//don't do anything
			}
		}
		
		private function UpdateActiveKeyFrame(time:Number):void
		{
			var percent:Number = Math.max(0, Math.min(time / mDuration, 1));
			var t:Number = percent * 100;
			var minKey:Number = 0;
			var maxKey:Number = 100;
			var diff:Number;
			var minDiff:Number = Number.MAX_VALUE;
			var maxDiff:Number = Number.MIN_VALUE;
			var key:Number;
			
			for(key in mKeyFrames)
			{
				if (key <= t)
				{
					diff = key - t;
					diff *= -1;
					
					if (diff <= minDiff)
					{
						minDiff = diff;
						minKey = key;
					}
				}
			}
			
			mActiveKeyFrame = minKey;
			minDiff = Number.MAX_VALUE
			
			//and determine the next keyframe
			for(key in mKeyFrames)
			{
				if (key > t)
				{
					diff = t-key;
					diff *= -1;
					
					if (diff <= minDiff)
					{
						minDiff = diff;
						maxKey = key;
					}
				}
			}
			
			mNextKeyFrame = maxKey;
			
			mKeyFrameDuration = Math.max(1, mNextKeyFrame - mActiveKeyFrame);
		}
	}

}