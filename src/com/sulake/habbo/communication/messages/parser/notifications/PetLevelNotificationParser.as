package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1496:int;
      
      private var var_2249:String;
      
      private var var_1229:int;
      
      private var var_584:String;
      
      private var var_1317:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1496 = param1.readInteger();
         this.var_2249 = param1.readString();
         this.var_1229 = param1.readInteger();
         this.var_584 = param1.readString();
         this.var_1317 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1496;
      }
      
      public function get petName() : String
      {
         return this.var_2249;
      }
      
      public function get level() : int
      {
         return this.var_1229;
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function get petType() : int
      {
         return this.var_1317;
      }
   }
}
