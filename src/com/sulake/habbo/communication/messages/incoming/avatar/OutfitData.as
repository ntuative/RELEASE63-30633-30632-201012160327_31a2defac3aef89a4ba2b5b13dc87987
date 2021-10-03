package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1720:int;
      
      private var var_2195:String;
      
      private var var_867:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1720 = param1.readInteger();
         this.var_2195 = param1.readString();
         this.var_867 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1720;
      }
      
      public function get figureString() : String
      {
         return this.var_2195;
      }
      
      public function get gender() : String
      {
         return this.var_867;
      }
   }
}
