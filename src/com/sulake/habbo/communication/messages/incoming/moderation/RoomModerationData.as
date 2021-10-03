package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_340:int;
      
      private var var_2197:int;
      
      private var var_2231:Boolean;
      
      private var var_2011:int;
      
      private var _ownerName:String;
      
      private var var_104:RoomData;
      
      private var var_717:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_340 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_2231 = param1.readBoolean();
         this.var_2011 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_104 = new RoomData(param1);
         this.var_717 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_104 != null)
         {
            this.var_104.dispose();
            this.var_104 = null;
         }
         if(this.var_717 != null)
         {
            this.var_717.dispose();
            this.var_717 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_340;
      }
      
      public function get userCount() : int
      {
         return this.var_2197;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2231;
      }
      
      public function get ownerId() : int
      {
         return this.var_2011;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_104;
      }
      
      public function get event() : RoomData
      {
         return this.var_717;
      }
   }
}
