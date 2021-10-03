package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1906:Number = 0.0;
      
      private var var_1905:Number = 0.0;
      
      private var var_1908:Number = 0.0;
      
      private var var_1907:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_1906 = param1;
         this.var_1905 = param2;
         this.var_1908 = param3;
         this.var_1907 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_1906;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_1905;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_1908;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_1907;
      }
   }
}
