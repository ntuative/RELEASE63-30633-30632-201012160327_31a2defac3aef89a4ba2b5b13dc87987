package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2244:Number;
      
      private var var_1203:Number;
      
      private var var_827:Number;
      
      private var var_826:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2244 = param1;
         this.var_1203 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_827 = param1;
         this.var_826 = 0;
      }
      
      public function update() : void
      {
         this.var_827 += this.var_1203;
         this.var_826 += this.var_827;
         if(this.var_826 > 0)
         {
            this.var_826 = 0;
            this.var_827 = this.var_2244 * -1 * this.var_827;
         }
      }
      
      public function get location() : Number
      {
         return this.var_826;
      }
   }
}
