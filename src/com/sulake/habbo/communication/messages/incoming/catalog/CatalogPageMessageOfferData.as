package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1458:String;
      
      private var var_955:int;
      
      private var var_956:int;
      
      private var var_1457:int;
      
      private var var_979:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1458 = param1.readString();
         this.var_955 = param1.readInteger();
         this.var_956 = param1.readInteger();
         this.var_1457 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_979 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_979.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1458;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_955;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_956;
      }
      
      public function get products() : Array
      {
         return this.var_979;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1457;
      }
   }
}
