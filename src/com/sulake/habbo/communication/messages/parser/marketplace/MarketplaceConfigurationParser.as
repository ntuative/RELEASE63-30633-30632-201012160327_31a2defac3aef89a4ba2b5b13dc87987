package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1349:Boolean;
      
      private var var_2375:int;
      
      private var var_1700:int;
      
      private var var_1699:int;
      
      private var var_2374:int;
      
      private var var_2373:int;
      
      private var var_2372:int;
      
      private var var_2169:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1349;
      }
      
      public function get commission() : int
      {
         return this.var_2375;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1700;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1699;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2373;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2374;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2372;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2169;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1349 = param1.readBoolean();
         this.var_2375 = param1.readInteger();
         this.var_1700 = param1.readInteger();
         this.var_1699 = param1.readInteger();
         this.var_2373 = param1.readInteger();
         this.var_2374 = param1.readInteger();
         this.var_2372 = param1.readInteger();
         this.var_2169 = param1.readInteger();
         return true;
      }
   }
}
