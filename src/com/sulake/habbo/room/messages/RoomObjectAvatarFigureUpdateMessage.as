package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_584:String;
      
      private var var_2356:String;
      
      private var var_867:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_584 = param1;
         this.var_867 = param2;
         this.var_2356 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function get race() : String
      {
         return this.var_2356;
      }
      
      public function get gender() : String
      {
         return this.var_867;
      }
   }
}
