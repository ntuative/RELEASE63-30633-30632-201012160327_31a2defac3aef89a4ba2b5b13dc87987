package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1503:String = "pricing_model_unknown";
      
      public static const const_431:String = "pricing_model_single";
      
      public static const const_398:String = "pricing_model_multi";
      
      public static const const_495:String = "pricing_model_bundle";
      
      public static const const_1459:String = "price_type_none";
      
      public static const const_614:String = "price_type_credits";
      
      public static const const_1060:String = "price_type_activitypoints";
      
      public static const const_924:String = "price_type_credits_and_activitypoints";
       
      
      private var var_633:String;
      
      private var var_954:String;
      
      private var _offerId:int;
      
      private var var_1458:String;
      
      private var var_955:int;
      
      private var var_956:int;
      
      private var var_1457:int;
      
      private var var_354:ICatalogPage;
      
      private var var_634:IProductContainer;
      
      private var var_1944:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1458 = param1.localizationId;
         this.var_955 = param1.priceInCredits;
         this.var_956 = param1.priceInActivityPoints;
         this.var_1457 = param1.activityPointType;
         this.var_354 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_354;
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
      
      public function get activityPointType() : int
      {
         return this.var_1457;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_634;
      }
      
      public function get pricingModel() : String
      {
         return this.var_633;
      }
      
      public function get priceType() : String
      {
         return this.var_954;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_1944;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_1944 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1458 = "";
         this.var_955 = 0;
         this.var_956 = 0;
         this.var_1457 = 0;
         this.var_354 = null;
         if(this.var_634 != null)
         {
            this.var_634.dispose();
            this.var_634 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_633)
         {
            case const_431:
               this.var_634 = new SingleProductContainer(this,param1);
               break;
            case const_398:
               this.var_634 = new MultiProductContainer(this,param1);
               break;
            case const_495:
               this.var_634 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_633);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_633 = const_431;
            }
            else
            {
               this.var_633 = const_398;
            }
         }
         else if(param1.length > 1)
         {
            this.var_633 = const_495;
         }
         else
         {
            this.var_633 = const_1503;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_955 > 0 && this.var_956 > 0)
         {
            this.var_954 = const_924;
         }
         else if(this.var_955 > 0)
         {
            this.var_954 = const_614;
         }
         else if(this.var_956 > 0)
         {
            this.var_954 = const_1060;
         }
         else
         {
            this.var_954 = const_1459;
         }
      }
   }
}
