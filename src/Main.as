package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.getTimer;
	import starling.core.Starling;
	
	/**
	 * ...
	 * @author Javier
	 */
	public class Main extends Sprite 
	{
		private var mHolder:Sprite;
		private var mSprite:Sprite;
		private var mStarling:Starling;
		private var mLastTime:Number;
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addEventListener(Event.ENTER_FRAME, HandleSetupFrame);
		}
		
		private function HandleSetupFrame(e:Event):void 
		{
			removeEventListener(Event.ENTER_FRAME, HandleSetupFrame);
			
			mStarling = new Starling(TestScene, stage);
			mStarling.start();
			
			mLastTime = -1;
			addEventListener(Event.ENTER_FRAME, HandleEnterFrame);
		}
		
		private function HandleEnterFrame(e:Event):void 
		{
			var curTime:Number = getTimer();
			
			if (mLastTime == -1)
			{
				mLastTime = curTime;
			}
			
			var delta:Number = curTime - mLastTime;
			mStarling.advanceTime(delta);			
			
			mLastTime = curTime;
		}
	}
}