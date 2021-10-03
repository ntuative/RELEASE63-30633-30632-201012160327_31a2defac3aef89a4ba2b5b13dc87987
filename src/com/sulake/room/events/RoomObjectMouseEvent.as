package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_239:String = "ROE_MOUSE_CLICK";
      
      public static const const_1709:String = "ROE_MOUSE_ENTER";
      
      public static const const_466:String = "ROE_MOUSE_MOVE";
      
      public static const const_1760:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1774:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_522:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1524:String = "";
      
      private var var_2377:Boolean;
      
      private var var_2380:Boolean;
      
      private var var_2378:Boolean;
      
      private var var_2379:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1524 = param2;
         this.var_2377 = param5;
         this.var_2380 = param6;
         this.var_2378 = param7;
         this.var_2379 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1524;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2377;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2380;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2378;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2379;
      }
   }
}
