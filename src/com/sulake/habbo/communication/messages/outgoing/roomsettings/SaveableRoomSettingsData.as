package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1449:String;
      
      private var var_2104:int;
      
      private var _password:String;
      
      private var var_1377:int;
      
      private var var_2106:int;
      
      private var var_768:Array;
      
      private var var_2102:Array;
      
      private var var_2103:Boolean;
      
      private var var_2100:Boolean;
      
      private var var_2105:Boolean;
      
      private var var_2107:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2103;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2103 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2100;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2100 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2105;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2105 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2107;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2107 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1449;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1449 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2104;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2104 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1377;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1377 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2106;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2106 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_768;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_768 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2102;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2102 = param1;
      }
   }
}
