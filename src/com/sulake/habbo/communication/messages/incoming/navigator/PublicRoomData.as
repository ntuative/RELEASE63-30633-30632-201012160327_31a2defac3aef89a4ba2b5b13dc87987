package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2072:String;
      
      private var var_2285:int;
      
      private var var_1940:int;
      
      private var var_2286:String;
      
      private var var_2609:int;
      
      private var var_1704:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2072 = param1.readString();
         this.var_2285 = param1.readInteger();
         this.var_1940 = param1.readInteger();
         this.var_2286 = param1.readString();
         this.var_2609 = param1.readInteger();
         this.var_1704 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2072;
      }
      
      public function get unitPort() : int
      {
         return this.var_2285;
      }
      
      public function get worldId() : int
      {
         return this.var_1940;
      }
      
      public function get castLibs() : String
      {
         return this.var_2286;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2609;
      }
      
      public function get nodeId() : int
      {
         return this.var_1704;
      }
   }
}
