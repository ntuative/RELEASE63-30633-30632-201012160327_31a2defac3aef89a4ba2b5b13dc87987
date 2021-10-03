package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_535:int = 0;
       
      
      private var var_2241:int = 0;
      
      private var var_1399:Dictionary;
      
      private var var_1805:int = 0;
      
      private var var_1804:int = 0;
      
      private var var_2139:Boolean = false;
      
      private var var_2323:int = 0;
      
      private var var_2330:int = 0;
      
      public function Purse()
      {
         this.var_1399 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2241;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1805;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1805 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1804;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1804 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1805 > 0 || this.var_1804 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2139;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2139 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2323;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2330;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1399;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1399 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1399[param1];
      }
   }
}
