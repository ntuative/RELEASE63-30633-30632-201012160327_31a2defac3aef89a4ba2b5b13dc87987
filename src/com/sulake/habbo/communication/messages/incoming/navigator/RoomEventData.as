package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1063:Boolean;
      
      private var var_1968:int;
      
      private var var_1970:String;
      
      private var var_340:int;
      
      private var var_1967:int;
      
      private var var_1972:String;
      
      private var var_1971:String;
      
      private var var_1969:String;
      
      private var var_768:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_768 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1063 = false;
            return;
         }
         this.var_1063 = true;
         this.var_1968 = int(_loc2_);
         this.var_1970 = param1.readString();
         this.var_340 = int(param1.readString());
         this.var_1967 = param1.readInteger();
         this.var_1972 = param1.readString();
         this.var_1971 = param1.readString();
         this.var_1969 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_768.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_768 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_1968;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_1970;
      }
      
      public function get flatId() : int
      {
         return this.var_340;
      }
      
      public function get eventType() : int
      {
         return this.var_1967;
      }
      
      public function get eventName() : String
      {
         return this.var_1972;
      }
      
      public function get eventDescription() : String
      {
         return this.var_1971;
      }
      
      public function get creationTime() : String
      {
         return this.var_1969;
      }
      
      public function get tags() : Array
      {
         return this.var_768;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1063;
      }
   }
}
