package com.lalolab.brainmvc.controller
{
	import com.lalolab.brainmvc.BrainManager;
	import com.lalolab.brainmvc.notice.BrainNotice;
	
	import mx.managers.CursorManager;

	/**
	 * 大脑控制类，用于业务逻辑处理
	 */
	public class BrainCommand
	{
		public function BrainCommand()
		{
			
		}
		
		/**
		 * 向Brain发送消息
		 * 
		 * @param notification 消息标记
		 * @param notifyBody 消息体
		 */
		protected function sendNotify(notification:String, notifyBody:Object = null):void
		{
			if(BrainManager.brain)
			{
				BrainManager.brain.sendNotification(notification, notifyBody);
			}
		}
		
		/**
		 * 返回失败
		 * @param evt 返回对象
		 */
		protected function onFault(evt:Object):void
		{
			CursorManager.removeAllCursors();
			
			sendNotify(BrainNotice.FAULT_NOTICE, evt);
		}
	}
}