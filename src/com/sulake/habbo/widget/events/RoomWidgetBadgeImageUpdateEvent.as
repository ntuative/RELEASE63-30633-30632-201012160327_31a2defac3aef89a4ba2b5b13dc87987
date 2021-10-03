package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_779:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2175:String;
      
      private var var_2174:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_779,param3,param4);
         this.var_2175 = param1;
         this.var_2174 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2175;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2174;
      }
   }
}
