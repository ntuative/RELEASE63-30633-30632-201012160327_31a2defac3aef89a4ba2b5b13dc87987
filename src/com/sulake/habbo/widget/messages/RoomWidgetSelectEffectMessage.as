package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_785:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_681:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_792:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_657:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_657 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_657;
      }
   }
}
