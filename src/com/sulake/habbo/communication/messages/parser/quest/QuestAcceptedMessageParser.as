package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestAcceptedMessageParser implements IMessageParser
   {
       
      
      private var var_1567:String;
      
      private var var_1032:QuestMessageData;
      
      public function QuestAcceptedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1567 = "";
         if(this.var_1032)
         {
            this.var_1032.dispose();
         }
         this.var_1032 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1567 = param1.readString();
         this.var_1032 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignId() : String
      {
         return this.var_1567;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_1032;
      }
   }
}
