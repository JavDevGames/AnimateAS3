package animations 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Javier
	 */
	public class KeyFrame 
	{
		private var mAnimFunction:Function;
		private var mAnimParams:Array;
		private var mConfigs:Vector.<Object>;
		
		public function KeyFrame() 
		{
			mConfigs = new Vector.<Object>
		}
		
		public function AddAnimFunction(animFunc:Function, ...rest):void
		{
			mAnimFunction = animFunc;
			mAnimParams = rest;
		}
		
		public function AddConfig(configFunction:Function, ...rest):void
		{
			mConfigs.push( { func:configFunction, params:rest } );
		}
		
		public function Update(time:Number, target:Sprite):void
		{
			var i:int;
			var posY:Number;
			var evalFunc:Function;
			var evalParams:Array;
			var t:Number;
			
			t = time;
			
			if (mAnimParams)
			{
				mAnimParams[4] = time;
				t = mAnimFunction.apply(this, mAnimParams);
			}
			
			for (i = 0; i < mConfigs.length; ++i)
			{
				evalFunc = mConfigs[i].func;
				evalParams = mConfigs[i].params;
				
				if (evalParams.length == 1)
				{
					evalFunc(evalParams[0], t, target);
				}
				else if (evalParams.length == 2)
				{
					evalFunc(evalParams[0], evalParams[1], t, target);
				}
				else if (evalParams.length == 3)
				{
					evalFunc(evalParams[0], evalParams[1], evalParams[2], t, target);
				}
				else if (evalParams.length == 4)
				{
					evalFunc(evalParams[0], evalParams[1], evalParams[2], evalParams[3], t, target);
				}
				else if (evalParams.length == 5)
				{
					evalFunc(evalParams[0], evalParams[1], evalParams[2], evalParams[3],evalParams[4], t, target);
				}
				else if (evalParams.length == 6)
				{
					evalFunc(evalParams[0], evalParams[1], evalParams[2], evalParams[3], evalParams[4], evalParams[5], t, target);
				}
			}
		}
	}

}