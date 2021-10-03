package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1051:String = "M";
      
      public static const const_1454:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_233:int = 0;
      
      private var _name:String = "";
      
      private var var_2119:int = 0;
      
      private var var_846:String = "";
      
      private var var_584:String = "";
      
      private var var_2121:String = "";
      
      private var var_2063:int;
      
      private var var_2125:int = 0;
      
      private var var_2123:String = "";
      
      private var var_2124:int = 0;
      
      private var var_2122:int = 0;
      
      private var var_2120:String = "";
      
      private var var_154:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_154 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_154)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_154)
         {
            this.var_158 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_154)
         {
            this.var_159 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_233;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_154)
         {
            this.var_233 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_154)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2119;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_154)
         {
            this.var_2119 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_846;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_154)
         {
            this.var_846 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_154)
         {
            this.var_584 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2121;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_154)
         {
            this.var_2121 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2063;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_154)
         {
            this.var_2063 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2125;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_154)
         {
            this.var_2125 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2123;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_154)
         {
            this.var_2123 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2124;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_154)
         {
            this.var_2124 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2122;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_154)
         {
            this.var_2122 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2120;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_154)
         {
            this.var_2120 = param1;
         }
      }
   }
}
