package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   
   public class ChargeInfo implements IPurchasableOffer
   {
       
      
      private var var_2267:int;
      
      private var var_2266:int;
      
      private var var_955:int;
      
      private var var_956:int;
      
      private var var_1457:int;
      
      private var var_2265:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2267 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         this.var_955 = param1.readInteger();
         this.var_956 = param1.readInteger();
         this.var_1457 = param1.readInteger();
         this.var_2265 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2267;
      }
      
      public function get charges() : int
      {
         return this.var_2266;
      }
      
      public function get offerId() : int
      {
         return 0;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_955;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_956;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2265;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1457;
      }
      
      public function get page() : ICatalogPage
      {
         return null;
      }
      
      public function get priceType() : String
      {
         return null;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return null;
      }
   }
}
