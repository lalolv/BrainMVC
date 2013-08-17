package com.lalolab.brainmvc.event
{
	import flash.events.Event;
	
	/**
	 * 消息处理事件
	 */
	public class BrainEvent extends Event
	{
		private var _notifyBody:Object;
		
		public function BrainEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public function get notifyBody():Object
		{
			return _notifyBody;
		}
		
		public function set notifyBody(value:Object):void
		{
			_notifyBody = value;
		}
		
		// Override the inherited clone() method.
		override public function clone():Event
		{
			return new BrainEvent(type);
		}
	}
}