package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_1941:int;
      
      private var var_1887:String;
      
      private var var_1761:int;
      
      private var _status:int;
      
      private var var_1942:int = -1;
      
      private var var_1917:int;
      
      private var var_1833:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_1941 = param3;
         this.var_1887 = param4;
         this.var_1761 = param5;
         this._status = param6;
         this.var_1942 = param7;
         this.var_1917 = param8;
         this.var_1833 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_1941;
      }
      
      public function get stuffData() : String
      {
         return this.var_1887;
      }
      
      public function get price() : int
      {
         return this.var_1761;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_1942;
      }
      
      public function get averagePrice() : int
      {
         return this.var_1917;
      }
      
      public function get offerCount() : int
      {
         return this.var_1833;
      }
   }
}
