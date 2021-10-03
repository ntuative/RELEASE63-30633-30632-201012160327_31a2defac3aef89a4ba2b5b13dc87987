package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1917:int;
      
      private var var_1920:int;
      
      private var var_1921:int;
      
      private var _dayOffsets:Array;
      
      private var var_1602:Array;
      
      private var var_1603:Array;
      
      private var var_1918:int;
      
      private var var_1919:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_1921 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1602 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1603 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_1918 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_1919 = param1;
      }
   }
}
