package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2045:int;
      
      private var var_2048:int;
      
      private var var_2046:String;
      
      private var var_2049:String;
      
      private var var_2047:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2045 = param1;
         this.var_2048 = param2;
         this.var_2046 = param3;
         this.var_2049 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2045;
      }
      
      public function get length() : int
      {
         return this.var_2048;
      }
      
      public function get name() : String
      {
         return this.var_2046;
      }
      
      public function get creator() : String
      {
         return this.var_2049;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2047;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2047 = param1;
      }
   }
}
