package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_78:String = "i";
      
      public static const const_84:String = "s";
      
      public static const const_233:String = "e";
       
      
      private var var_1612:String;
      
      private var var_2409:int;
      
      private var var_1279:String;
      
      private var var_1280:int;
      
      private var var_1615:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1612 = param1.readString();
         this.var_2409 = param1.readInteger();
         this.var_1279 = param1.readString();
         this.var_1280 = param1.readInteger();
         this.var_1615 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1612;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2409;
      }
      
      public function get extraParam() : String
      {
         return this.var_1279;
      }
      
      public function get productCount() : int
      {
         return this.var_1280;
      }
      
      public function get expiration() : int
      {
         return this.var_1615;
      }
   }
}
