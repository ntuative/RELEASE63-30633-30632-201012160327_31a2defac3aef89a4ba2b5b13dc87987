package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_145:int = 1;
      
      public static const const_376:int = 2;
      
      public static const const_1302:int = 3;
       
      
      private var var_2586:int;
      
      private var _state:int;
      
      private var var_1377:int;
      
      private var var_2601:int;
      
      private var var_1696:int;
      
      private var var_2596:int;
      
      private var var_2600:int = 0;
      
      private var var_2597:int;
      
      private var var_2599:String;
      
      private var var_1235:int;
      
      private var var_1515:String;
      
      private var var_2434:int;
      
      private var var_2598:String;
      
      private var _message:String;
      
      private var var_2558:int;
      
      private var var_785:String;
      
      private var var_1622:int;
      
      private var var_2595:String;
      
      private var var_340:int;
      
      private var var_2602:String;
      
      private var var_2095:String;
      
      private var var_2285:int;
      
      private var var_1940:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2586;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1377;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2601;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1696;
      }
      
      public function get priority() : int
      {
         return this.var_2596 + this.var_2600;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2597;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2599;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1235;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1515;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2434;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2598;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2558;
      }
      
      public function get roomName() : String
      {
         return this.var_785;
      }
      
      public function get roomType() : int
      {
         return this.var_1622;
      }
      
      public function get flatType() : String
      {
         return this.var_2595;
      }
      
      public function get flatId() : int
      {
         return this.var_340;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2602;
      }
      
      public function get roomResources() : String
      {
         return this.var_2095;
      }
      
      public function get unitPort() : int
      {
         return this.var_2285;
      }
      
      public function get worldId() : int
      {
         return this.var_1940;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1377 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2601 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1696 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2596 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2600 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2597 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2599 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1235 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1515 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2434 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2598 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_2558 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_785 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1622 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2595 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_340 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2602 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2095 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2285 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_1940 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1696) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
