package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1496:int;
      
      private var _name:String;
      
      private var var_1229:int;
      
      private var var_2007:int;
      
      private var var_2010:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_584:String;
      
      private var var_2006:int;
      
      private var var_2012:int;
      
      private var var_2009:int;
      
      private var var_2008:int;
      
      private var var_2011:int;
      
      private var _ownerName:String;
      
      private var var_912:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1496;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1229;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2007;
      }
      
      public function get experience() : int
      {
         return this.var_2010;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2006;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2012;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2009;
      }
      
      public function get respect() : int
      {
         return this.var_2008;
      }
      
      public function get ownerId() : int
      {
         return this.var_2011;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_912;
      }
      
      public function flush() : Boolean
      {
         this.var_1496 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1496 = param1.readInteger();
         this._name = param1.readString();
         this.var_1229 = param1.readInteger();
         this.var_2007 = param1.readInteger();
         this.var_2010 = param1.readInteger();
         this.var_2006 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2012 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2009 = param1.readInteger();
         this.var_584 = param1.readString();
         this.var_2008 = param1.readInteger();
         this.var_2011 = param1.readInteger();
         this.var_912 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
