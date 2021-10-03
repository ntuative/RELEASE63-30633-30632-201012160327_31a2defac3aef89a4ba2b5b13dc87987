package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1713:int = 0;
      
      private var var_1714:int = 0;
      
      private var var_1457:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1713;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1714;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1457;
      }
      
      public function flush() : Boolean
      {
         this.var_1713 = 0;
         this.var_1714 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1713 = param1.readInteger();
         this.var_1714 = param1.readInteger();
         this.var_1457 = param1.readInteger();
         return true;
      }
   }
}
