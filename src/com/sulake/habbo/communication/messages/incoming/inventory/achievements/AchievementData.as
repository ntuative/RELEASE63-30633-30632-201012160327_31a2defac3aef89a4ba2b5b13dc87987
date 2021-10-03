package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1229:int;
      
      private var var_264:String;
      
      private var var_2051:int;
      
      private var var_2021:int;
      
      private var var_1502:int;
      
      private var var_2050:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1229 = param1.readInteger();
         this.var_264 = param1.readString();
         this.var_2051 = param1.readInteger();
         this.var_2021 = param1.readInteger();
         this.var_1502 = param1.readInteger();
         this.var_2050 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_264;
      }
      
      public function get level() : int
      {
         return this.var_1229;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2051;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2021;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1502;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2050;
      }
   }
}
