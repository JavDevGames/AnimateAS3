package
{
	import animations.AnimController;
	import animations.AnimObject;
	import animations.attentionseekers.AttentionSeekers;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.getTimer;
	
	/**
	 * ...
	 * @author Javier
	 */
	public class Main extends Sprite 
	{
		private var mAnimController:AnimController;
		private var mHolder:Sprite;
		private var mSprite:Sprite;
		
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
			
			var bmpData:BitmapData = new BitmapData(80, 80, false, 0xffff0000);
			var bmp:Bitmap = new Bitmap(bmpData);
			
			mHolder = new Sprite();
			mHolder.x = stage.stageWidth / 2;
			mHolder.y = stage.stageHeight / 2; 
			addChild(mHolder);
			
			mSprite = new Sprite();
			mSprite.addChild(bmp);
			mHolder.addChild(mSprite);
			
			mAnimController = new AnimController();
			
			var bounce:AnimObject = AttentionSeekers.Wobble();
			bounce.SetTarget(mSprite);
			mAnimController.AddAnimObject(bounce);
			
			addEventListener(Event.ENTER_FRAME, HandleEnterFrame);
		}
		
		private function HandleEnterFrame(e:Event):void 
		{
			var time:Number = getTimer();
			mAnimController.Update(time);
		}
	}
	
	
}