package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1524:String = "";
      
      private var var_2393:String = "";
      
      private var var_2391:String = "";
      
      private var var_2390:Number = 0;
      
      private var var_2392:Number = 0;
      
      private var var_2239:Number = 0;
      
      private var var_2236:Number = 0;
      
      private var var_2380:Boolean = false;
      
      private var var_2377:Boolean = false;
      
      private var var_2378:Boolean = false;
      
      private var var_2379:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1524 = param2;
         this.var_2393 = param3;
         this.var_2391 = param4;
         this.var_2390 = param5;
         this.var_2392 = param6;
         this.var_2239 = param7;
         this.var_2236 = param8;
         this.var_2380 = param9;
         this.var_2377 = param10;
         this.var_2378 = param11;
         this.var_2379 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1524;
      }
      
      public function get canvasId() : String
      {
         return this.var_2393;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2391;
      }
      
      public function get screenX() : Number
      {
         return this.var_2390;
      }
      
      public function get screenY() : Number
      {
         return this.var_2392;
      }
      
      public function get localX() : Number
      {
         return this.var_2239;
      }
      
      public function get localY() : Number
      {
         return this.var_2236;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2380;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2377;
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
