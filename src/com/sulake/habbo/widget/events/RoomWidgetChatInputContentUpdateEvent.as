package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_802:String = "RWWCIDE_CHAT_INPUT_CONTENT";
      
      public static const const_996:String = "whisper";
      
      public static const const_1270:String = "shout";
       
      
      private var var_2218:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_802,param3,param4);
         this.var_2218 = param1;
         this._userName = param2;
      }
      
      public function get messageType() : String
      {
         return this.var_2218;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
