package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1133:int = 2;
      
      private static const const_1134:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_263:Array;
      
      private var var_963:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_263 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1133)
         {
            this.var_263 = new Array();
            this.var_263.push(const_1134);
            this.var_963 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_963 > 0)
         {
            --this.var_963;
         }
         if(this.var_963 == 0)
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
