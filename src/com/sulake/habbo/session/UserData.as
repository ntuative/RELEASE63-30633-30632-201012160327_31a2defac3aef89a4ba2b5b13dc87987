package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_846:String = "";
      
      private var var_584:String = "";
      
      private var var_2121:String = "";
      
      private var var_2063:int;
      
      private var var_2125:int = 0;
      
      private var var_2123:String = "";
      
      private var var_2124:int = 0;
      
      private var var_2122:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2063;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2063 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_846;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_846 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_584 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2121;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2121 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2125;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2125 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2123;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2123 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2124;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2124 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2122;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2122 = param1;
      }
   }
}
