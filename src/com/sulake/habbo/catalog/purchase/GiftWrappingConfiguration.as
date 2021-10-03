package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1349:Boolean = false;
      
      private var var_1761:int;
      
      private var var_1498:Array;
      
      private var var_650:Array;
      
      private var var_649:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1349 = _loc2_.isWrappingEnabled;
         this.var_1761 = _loc2_.wrappingPrice;
         this.var_1498 = _loc2_.stuffTypes;
         this.var_650 = _loc2_.boxTypes;
         this.var_649 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1349;
      }
      
      public function get price() : int
      {
         return this.var_1761;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1498;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_650;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_649;
      }
   }
}
