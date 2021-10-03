package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_621:String = "";
      
      public static const const_532:int = 0;
      
      public static const const_492:int = 255;
      
      public static const const_808:Boolean = false;
      
      public static const const_457:int = 0;
      
      public static const const_421:int = 0;
      
      public static const const_484:int = 0;
      
      public static const const_1067:int = 1;
      
      public static const const_948:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1951:String = "";
      
      private var var_1732:int = 0;
      
      private var var_1950:int = 255;
      
      private var var_1952:Boolean = false;
      
      private var var_1947:int = 0;
      
      private var var_1949:int = 0;
      
      private var var_1948:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1951 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1951;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1732 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1732;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1950 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1950;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_1952 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_1952;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_1947 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_1947;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_1949 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_1949;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_1948 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_1948;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
