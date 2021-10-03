package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_584:String;
      
      private var var_846:String;
      
      private var var_2566:String;
      
      private var var_1724:String;
      
      private var var_2564:int;
      
      private var var_2567:String;
      
      private var var_2565:int;
      
      private var var_2568:int;
      
      private var var_2003:int;
      
      private var _respectLeft:int;
      
      private var var_660:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_584 = param1.readString();
         this.var_846 = param1.readString();
         this.var_2566 = param1.readString();
         this.var_1724 = param1.readString();
         this.var_2564 = param1.readInteger();
         this.var_2567 = param1.readString();
         this.var_2565 = param1.readInteger();
         this.var_2568 = param1.readInteger();
         this.var_2003 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_660 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_584;
      }
      
      public function get sex() : String
      {
         return this.var_846;
      }
      
      public function get customData() : String
      {
         return this.var_2566;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
      
      public function get tickets() : int
      {
         return this.var_2564;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2567;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2565;
      }
      
      public function get directMail() : int
      {
         return this.var_2568;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2003;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_660;
      }
   }
}
