package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1818:int;
      
      private var var_2559:int;
      
      private var var_1235:int;
      
      private var var_2558:int;
      
      private var var_104:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1818 = param1.readInteger();
         this.var_2559 = param1.readInteger();
         this.var_1235 = param1.readInteger();
         this.var_2558 = param1.readInteger();
         this.var_104 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1818);
      }
      
      public function get callId() : int
      {
         return this.var_1818;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2559;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1235;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2558;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_104;
      }
   }
}
