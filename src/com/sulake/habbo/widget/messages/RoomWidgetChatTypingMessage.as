package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_723:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_790:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_723);
         this.var_790 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_790;
      }
   }
}
