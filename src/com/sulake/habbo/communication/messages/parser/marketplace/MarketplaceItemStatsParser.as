package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1917:int;
      
      private var var_1920:int;
      
      private var var_1921:int;
      
      private var _dayOffsets:Array;
      
      private var var_1602:Array;
      
      private var var_1603:Array;
      
      private var var_1918:int;
      
      private var var_1919:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1917;
      }
      
      public function get offerCount() : int
      {
         return this.var_1920;
      }
      
      public function get historyLength() : int
      {
         return this.var_1921;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1602;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1603;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_1918;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_1919;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1917 = param1.readInteger();
         this.var_1920 = param1.readInteger();
         this.var_1921 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1602 = [];
         this.var_1603 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1602.push(param1.readInteger());
            this.var_1603.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1919 = param1.readInteger();
         this.var_1918 = param1.readInteger();
         return true;
      }
   }
}
