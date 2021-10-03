package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_201:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2447:int = 0;
      
      private var var_2446:int = 0;
      
      private var var_2445:int = 0;
      
      private var var_2444:Boolean = false;
      
      private var var_1954:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_201,param6,param7);
         this.var_2447 = param1;
         this.var_2446 = param2;
         this.var_2445 = param3;
         this.var_2444 = param4;
         this.var_1954 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2447;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2446;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2445;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2444;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1954;
      }
   }
}
