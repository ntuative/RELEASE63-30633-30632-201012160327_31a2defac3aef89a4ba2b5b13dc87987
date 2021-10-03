package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_464:int = -2.147483648E9;
      
      private var var_463:int = 2.147483647E9;
      
      private var var_465:int = -2.147483648E9;
      
      private var var_462:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_464;
      }
      
      public function get maxWidth() : int
      {
         return this.var_463;
      }
      
      public function get minHeight() : int
      {
         return this.var_465;
      }
      
      public function get maxHeight() : int
      {
         return this.var_462;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_464 = param1;
         if(this.var_464 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_464)
         {
            this._target.width = this.var_464;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_463 = param1;
         if(this.var_463 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_463)
         {
            this._target.width = this.var_463;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_465 = param1;
         if(this.var_465 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_465)
         {
            this._target.height = this.var_465;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_462 = param1;
         if(this.var_462 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_462)
         {
            this._target.height = this.var_462;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_464 == int.MIN_VALUE && this.var_463 == int.MAX_VALUE && this.var_465 == int.MIN_VALUE && this.var_462 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_464 = int.MIN_VALUE;
         this.var_463 = int.MAX_VALUE;
         this.var_465 = int.MIN_VALUE;
         this.var_462 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_464 = this.var_464;
         _loc2_.var_463 = this.var_463;
         _loc2_.var_465 = this.var_465;
         _loc2_.var_462 = this.var_462;
         return _loc2_;
      }
   }
}
