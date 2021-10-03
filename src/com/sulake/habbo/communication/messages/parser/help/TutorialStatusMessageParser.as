package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1249:Boolean;
      
      private var var_993:Boolean;
      
      private var var_1248:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1249;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_993;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1248;
      }
      
      public function flush() : Boolean
      {
         this.var_1249 = false;
         this.var_993 = false;
         this.var_1248 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1249 = param1.readBoolean();
         this.var_993 = param1.readBoolean();
         this.var_1248 = param1.readBoolean();
         return true;
      }
   }
}
