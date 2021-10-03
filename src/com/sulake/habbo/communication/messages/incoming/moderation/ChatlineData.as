package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2284:int;
      
      private var var_2281:int;
      
      private var var_2283:int;
      
      private var var_2282:String;
      
      private var var_1703:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2284 = param1.readInteger();
         this.var_2281 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         this.var_2282 = param1.readString();
         this.var_1703 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2284;
      }
      
      public function get minute() : int
      {
         return this.var_2281;
      }
      
      public function get chatterId() : int
      {
         return this.var_2283;
      }
      
      public function get chatterName() : String
      {
         return this.var_2282;
      }
      
      public function get msg() : String
      {
         return this.var_1703;
      }
   }
}
