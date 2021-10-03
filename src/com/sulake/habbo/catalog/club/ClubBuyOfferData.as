package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1625:String;
      
      private var var_1761:int;
      
      private var var_2312:Boolean;
      
      private var var_2311:Boolean;
      
      private var var_2309:int;
      
      private var var_2315:int;
      
      private var var_354:ICatalogPage;
      
      private var var_2314:int;
      
      private var var_2313:int;
      
      private var var_2310:int;
      
      private var var_2481:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1625 = param2;
         this.var_1761 = param3;
         this.var_2312 = param4;
         this.var_2311 = param5;
         this.var_2309 = param6;
         this.var_2315 = param7;
         this.var_2314 = param8;
         this.var_2313 = param9;
         this.var_2310 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1625;
      }
      
      public function get price() : int
      {
         return this.var_1761;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2312;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2311;
      }
      
      public function get periods() : int
      {
         return this.var_2309;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2315;
      }
      
      public function get year() : int
      {
         return this.var_2314;
      }
      
      public function get month() : int
      {
         return this.var_2313;
      }
      
      public function get day() : int
      {
         return this.var_2310;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_535;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1761;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_354;
      }
      
      public function get priceType() : String
      {
         return Offer.const_614;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1625;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_354 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2481;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2481 = param1;
      }
   }
}
