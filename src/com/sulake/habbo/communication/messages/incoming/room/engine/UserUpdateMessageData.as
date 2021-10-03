package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_2032:Number = 0;
      
      private var var_2035:Number = 0;
      
      private var var_2034:Number = 0;
      
      private var var_2031:Number = 0;
      
      private var var_233:int = 0;
      
      private var var_2033:int = 0;
      
      private var var_287:Array;
      
      private var var_2036:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_287 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_158 = param3;
         this.var_159 = param4;
         this.var_2032 = param5;
         this.var_233 = param6;
         this.var_2033 = param7;
         this.var_2035 = param8;
         this.var_2034 = param9;
         this.var_2031 = param10;
         this.var_2036 = param11;
         this.var_287 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function get localZ() : Number
      {
         return this.var_2032;
      }
      
      public function get targetX() : Number
      {
         return this.var_2035;
      }
      
      public function get targetY() : Number
      {
         return this.var_2034;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2031;
      }
      
      public function get dir() : int
      {
         return this.var_233;
      }
      
      public function get dirHead() : int
      {
         return this.var_2033;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2036;
      }
      
      public function get actions() : Array
      {
         return this.var_287.slice();
      }
   }
}
