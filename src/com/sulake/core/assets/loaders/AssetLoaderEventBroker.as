package com.sulake.core.assets.loaders
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   
   class AssetLoaderEventBroker extends EventDispatcher implements IDisposable
   {
       
      
      protected var _status:int = 0;
      
      protected var var_288:int = 0;
      
      protected var var_2634:int = 2;
      
      function AssetLoaderEventBroker()
      {
         super();
      }
      
      protected function loadEventHandler(param1:Event) : void
      {
         switch(param1.type)
         {
            case HTTPStatusEvent.HTTP_STATUS:
               this._status = HTTPStatusEvent(param1).status;
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_897,this._status));
               break;
            case Event.COMPLETE:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_30,this._status));
               break;
            case Event.UNLOAD:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_891,this._status));
               break;
            case Event.OPEN:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_956,this._status));
               break;
            case ProgressEvent.PROGRESS:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1056,this._status));
               break;
            case IOErrorEvent.IO_ERROR:
               if(!this.retry())
               {
                  dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_42,this._status));
               }
               break;
            case SecurityErrorEvent.SECURITY_ERROR:
               if(!this.retry())
               {
                  dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_42,this._status));
               }
               break;
            default:
               Logger.log("Unknown asset loader event! AssetLoaderEventBroker::loadEventHandler(" + param1 + ")");
         }
      }
      
      protected function retry() : Boolean
      {
         return false;
      }
   }
}
