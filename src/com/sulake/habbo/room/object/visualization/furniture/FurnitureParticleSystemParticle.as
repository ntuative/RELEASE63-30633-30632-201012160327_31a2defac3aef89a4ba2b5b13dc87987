package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_158:Number;
      
      private var var_159:Number;
      
      private var var_1795:Number;
      
      private var var_1797:Number;
      
      private var var_1798:Number;
      
      private var var_1128:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_912:int = 0;
      
      private var var_1796:int;
      
      private var var_2525:Boolean = false;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null) : void
      {
         this._x = param1;
         this.var_158 = param2;
         this.var_159 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1795 = this._x - this._direction.x * param6;
         this.var_1797 = this.var_158 - this._direction.y * param6;
         this.var_1798 = this.var_159 - this._direction.z * param6;
         this.var_912 = 0;
         this.var_1128 = false;
         this.var_1796 = param7;
         this.var_2525 = param8;
         this._frames = param9;
      }
      
      public function update() : void
      {
         ++this.var_912;
         if(this.var_912 == this.var_1796)
         {
            this.ignite();
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_912 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2525;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_912 <= this.var_1796;
      }
      
      public function dispose() : void
      {
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
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_158 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_159 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1795;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1128 = true;
         this.var_1795 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1797;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1128 = true;
         this.var_1797 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1798;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1128 = true;
         this.var_1798 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1128;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_158,this.var_159].toString();
      }
   }
}
