package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_833:int = 10;
      
      private static const const_543:int = 20;
      
      private static const const_1139:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_263:Array;
      
      private var var_678:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_263 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_678)
            {
               this.var_678 = true;
               this.var_263 = new Array();
               this.var_263.push(const_1139);
               this.var_263.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_833)
         {
            if(this.var_678)
            {
               this.var_678 = false;
               this.var_263 = new Array();
               this.var_263.push(const_833 + param1);
               this.var_263.push(const_543 + param1);
               this.var_263.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_263.length > 0)
            {
               super.setAnimation(this.var_263.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
