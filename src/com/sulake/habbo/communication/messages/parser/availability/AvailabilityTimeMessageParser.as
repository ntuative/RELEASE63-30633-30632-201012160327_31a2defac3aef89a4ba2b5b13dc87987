package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1312:Boolean;
      
      private var var_1530:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1312;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1530;
      }
      
      public function flush() : Boolean
      {
         this.var_1312 = false;
         this.var_1530 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1312 = param1.readInteger() > 0;
         this.var_1530 = param1.readInteger();
         return true;
      }
   }
}
