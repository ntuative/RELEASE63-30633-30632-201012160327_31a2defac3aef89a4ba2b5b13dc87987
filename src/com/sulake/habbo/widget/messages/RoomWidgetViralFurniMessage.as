package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_596:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_156:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_330:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_330;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_330 = param1;
      }
   }
}
