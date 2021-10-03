package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_906:String = "";
      
      private var var_1120:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1120 = "";
         this.var_906 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1120 = param1.readString();
         this.var_906 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_906;
      }
      
      public function get productDescription() : String
      {
         return this.var_1120;
      }
   }
}
