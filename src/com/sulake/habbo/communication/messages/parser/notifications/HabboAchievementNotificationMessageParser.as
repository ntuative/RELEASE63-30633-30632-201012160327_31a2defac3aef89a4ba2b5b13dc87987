package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1229:int;
      
      private var var_1635:int;
      
      private var var_2021:int;
      
      private var var_1502:int;
      
      private var var_1230:int;
      
      private var var_2175:String = "";
      
      private var var_2319:String = "";
      
      private var var_2318:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1229 = param1.readInteger();
         this.var_2175 = param1.readString();
         this.var_1635 = param1.readInteger();
         this.var_2021 = param1.readInteger();
         this.var_1502 = param1.readInteger();
         this.var_1230 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         this.var_2319 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1229;
      }
      
      public function get points() : int
      {
         return this.var_1635;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2021;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1502;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1230;
      }
      
      public function get badgeID() : String
      {
         return this.var_2175;
      }
      
      public function get achievementID() : int
      {
         return this.var_2318;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2319;
      }
   }
}
