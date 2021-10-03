package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1909:int;
      
      private var var_1325:String;
      
      private var var_2405:int;
      
      private var var_2403:int;
      
      private var _category:int;
      
      private var var_1887:String;
      
      private var var_1346:int;
      
      private var var_2401:int;
      
      private var var_2402:int;
      
      private var var_2400:int;
      
      private var var_2406:int;
      
      private var var_2404:Boolean;
      
      private var var_2701:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_1909 = param1;
         this.var_1325 = param2;
         this.var_2405 = param3;
         this.var_2403 = param4;
         this._category = param5;
         this.var_1887 = param6;
         this.var_1346 = param7;
         this.var_2401 = param8;
         this.var_2402 = param9;
         this.var_2400 = param10;
         this.var_2406 = param11;
         this.var_2404 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_1909;
      }
      
      public function get itemType() : String
      {
         return this.var_1325;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2405;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2403;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1887;
      }
      
      public function get extra() : int
      {
         return this.var_1346;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2401;
      }
      
      public function get creationDay() : int
      {
         return this.var_2402;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2400;
      }
      
      public function get creationYear() : int
      {
         return this.var_2406;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2404;
      }
      
      public function get songID() : int
      {
         return this.var_1346;
      }
   }
}
