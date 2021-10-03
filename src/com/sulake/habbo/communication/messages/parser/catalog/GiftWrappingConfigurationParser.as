package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2018:Boolean;
      
      private var var_2017:int;
      
      private var var_1498:Array;
      
      private var var_650:Array;
      
      private var var_649:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2018;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2017;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1498 = [];
         this.var_650 = [];
         this.var_649 = [];
         this.var_2018 = param1.readBoolean();
         this.var_2017 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1498.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_650.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_649.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
