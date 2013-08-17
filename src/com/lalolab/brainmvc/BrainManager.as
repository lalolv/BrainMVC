package com.lalolab.brainmvc
{
	import com.lalolab.brainmvc.event.BrainEvent;
	
	import flash.display.Sprite;
	
	/**
	 * 大脑管理类，用于创建并组织大脑的消息动作
	 */
	public class BrainManager extends Sprite
	{
		public static var brain:BrainManager;
		
		/**
		 * 创建大脑Brain，并启动
		 * 
		 */
		public static function startup():void
		{
			if(brain == null)
			{
				brain = new BrainManager();
			}
		}
		
		/**
		 * 向Brain发送消息
		 * 
		 * @param notification 消息标记
		 * @param notifyBody 消息体
		 */
		public function sendNotification(notification:String, notifyBody:Object = null):void
		{
			var brainEvent:BrainEvent = new BrainEvent(notification);
			brainEvent.notifyBody = notifyBody;
			this.dispatchEvent(brainEvent);
		}
		
		/**
		 * 接收Brain发送的消息
		 * 
		 * @param notification 消息标记
		 * @param listener 消息处理函数
		 */
		public function receiveNotification(notification:String, listener:Function):void
		{
			this.addEventListener(notification, listener);
		}
		
		/**
		 * 消除接收信息
		 * 
		 * @param notification 消息标记
		 * @param listener 消息处理函数
		 */
		public function removeNotification(notification:String, listener:Function):void
		{
			this.removeEventListener(notification, listener);
		}
	}
}