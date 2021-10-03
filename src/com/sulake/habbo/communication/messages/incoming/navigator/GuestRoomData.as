package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_340:int;
      
      private var var_717:Boolean;
      
      private var var_785:String;
      
      private var _ownerName:String;
      
      private var var_2104:int;
      
      private var var_2197:int;
      
      private var var_2416:int;
      
      private var var_1449:String;
      
      private var var_2415:int;
      
      private var var_2151:Boolean;
      
      private var var_720:int;
      
      private var var_1377:int;
      
      private var var_2414:String;
      
      private var var_768:Array;
      
      private var var_2417:RoomThumbnailData;
      
      private var var_2103:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_768 = new Array();
         super();
         this.var_340 = param1.readInteger();
         this.var_717 = param1.readBoolean();
         this.var_785 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2104 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         this.var_1449 = param1.readString();
         this.var_2415 = param1.readInteger();
         this.var_2151 = param1.readBoolean();
         this.var_720 = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_2414 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_768.push(_loc4_);
            _loc3_++;
         }
         this.var_2417 = new RoomThumbnailData(param1);
         this.var_2103 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_340;
      }
      
      public function get event() : Boolean
      {
         return this.var_717;
      }
      
      public function get roomName() : String
      {
         return this.var_785;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2104;
      }
      
      public function get userCount() : int
      {
         return this.var_2197;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2416;
      }
      
      public function get description() : String
      {
         return this.var_1449;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2415;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2151;
      }
      
      public function get score() : int
      {
         return this.var_720;
      }
      
      public function get categoryId() : int
      {
         return this.var_1377;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2414;
      }
      
      public function get tags() : Array
      {
         return this.var_768;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2417;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2103;
      }
   }
}
