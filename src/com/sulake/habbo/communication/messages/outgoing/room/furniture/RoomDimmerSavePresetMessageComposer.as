package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2074:int;
      
      private var var_2073:int;
      
      private var var_2077:String;
      
      private var var_2075:int;
      
      private var var_2076:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2074 = param1;
         this.var_2073 = param2;
         this.var_2077 = param3;
         this.var_2075 = param4;
         this.var_2076 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2074,this.var_2073,this.var_2077,this.var_2075,int(this.var_2076)];
      }
      
      public function dispose() : void
      {
      }
   }
}
