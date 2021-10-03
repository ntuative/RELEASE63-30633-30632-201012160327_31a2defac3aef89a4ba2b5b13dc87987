package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_667:int = 1;
      
      public static const const_803:int = 2;
      
      public static const const_595:int = 3;
      
      public static const const_973:int = 4;
      
      public static const const_810:int = 5;
      
      public static const const_998:int = 6;
       
      
      private var _type:int;
      
      private var var_1024:int;
      
      private var var_1943:String;
      
      private var var_2428:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1024 = param2;
         this.var_1943 = param3;
         this.var_2428 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1943;
      }
      
      public function get time() : String
      {
         return this.var_2428;
      }
      
      public function get senderId() : int
      {
         return this.var_1024;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
