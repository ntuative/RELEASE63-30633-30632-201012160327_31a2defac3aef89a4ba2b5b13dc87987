package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_613:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_966:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2126:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_613);
         this.var_2126 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2126;
      }
   }
}
